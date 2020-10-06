---
draft: false
title: "Building an API ecosystem"
date: 2020-09-23
tags: [ "architecture", "cloud", "product", "platform", "partnership", "API"]
notoc: false
nopaging: false
---

> This is the writeup of a session I delivered at both the [Hong Kong Computer Society EASIG Seminar](https://www.anpasia.com/newsletterweb/41435B4B7647425D4379474659/424B5A4A7746465A437342425F43?noTracking=true) and [Cloud Expo Asia](https://www.youtube.com/watch?v=oLz_yHGbThI&feature=youtu.be). It's about how, at [PayMe](https://payme.hsbc.com.hk/), we started by creating an [API product](https://developers.payme.hsbc.com.hk/) but realized our goal should have been to build an ecosystem instead.

## What is PayMe

Wikipedia makes a decent job of explaining it: https://en.wikipedia.org/wiki/PayMe, although it's a bit light on the products that are most relevant to this post: [API](https://payme.hsbc.com.hk/business-api) and [POS](https://payme.hsbc.com.hk/business-point-of-sale).

For the first two years of its existence, PayMe was a closed-loop payment network: only people with PayMe could send and receive payments, only merchants using PayMe for Business could collect payments from PayMe users.

<div align="center">
	<img src="/2020/09/payme-closedloop.png" style="display: inline;" width="60%" alt="PayMe is a payment network to engage both consumers and merchants"/>
</div>

This kinda of changed when we joined the [Hong Kong FPS (Faster Payments)](https://www.hkma.gov.hk/eng/key-functions/international-financial-centre/financial-market-infrastructure/faster-payment-system-fps/) system in 2019: PayMe users could send money to, and receive money from, other banks and SVF, and PayMe for Business merchants could be paid by non-PayMe users using other FPS-compatible apps and wallets. But that was not enough.

## Delivering an API product

We realized pretty quickly that you can’t reach economies of scale if you do all by your own (that’s a lesson some big companies – Microsoft for example – have executed very well in the past few years).

<div align="center">
	<img src="/2020/09/payme-closedloop-partners.png" style="display: inline;" width="60%" alt="Partners are a key actor in this network"/>
</div>

So we built a nice [developer portal](https://developers.payme.hsbc.com.hk/), with information about our API, how to integrate with them, how to use them… and a number of Hong Kong startups (like [SHOPLINE](https://shopline.hk/blog/paymeforbusiness_shopline/), [Boutir](https://www.boutir.com/), [Posify](https://www.posify.me/hk/payme-for-business), [MonsterApp](https://www.mshop-app.com/%E6%88%91%E5%B7%B2%E7%B6%93%E6%93%81%E6%9C%89-payme-for-business-%E8%A9%B2%E5%A6%82%E4%BD%95%E5%8F%96%E5%BE%97-payme-for-business-%E5%95%9F%E5%8B%95%E4%BB%A3%E7%A2%BC%E5%95%9F%E5%8B%95%E7%B6%B2/), and many more) started to work with us to add those APIs to their product offering.

Now we had a portal with all the technical documentation, but how what do we tell to a 3rd party company – that either come to us or that we reached out to – when they ask “how do we proceed to use your services via API?”.
Thankfully, we were not the first to do so :) There are plenty of developer portals/ API portals around that list their "path to live" steps.

<div align="center">
	<img src="/2020/09/apilive-steps.png" style="display: inline;" width="80%" alt="Example of 'path to live' for APIs"/>
</div>

We settled on a 7-steps process:

1. Create dev portal account
1. Choose the API you want to use
1. Get API key & secret
1. Integrate (auth, certs, msg encryption & signing, …)
1. Test
1. Go live (profit! ;-)

## What we overlooked

Once our first integrations were live, we realized we oversimplified one very important step from this list, and completely overlooked another:

- **Monitor** your users
- **Test**

Let's explain what those are with some examples.

### Monitor your API consumers

You need to monitor your API consumers, as in: monitor how they use your APIs (call patterns, etc).  
This is important for you to be able to verify that:

1. your APIs are used as _intended_  
1. your APIs usage is _appropriate_

As an example, the PayMe APIs work in a way that the consumer need to first call a `/token` endpoint, exchanging its credentials to obtain an JWT token, and then use said JWT token to call the actual `/payments` API endpoint.  
The JWT token has a certain validity, so that the API consumer can make many calls to the `/payments` API using the same JWT token within its validity period.  
When the JWT token expires, a new JWT token must be obtained again from the `/token` endpoint.

<div align="center">
	<img src="/2020/09/payme-api-calls000.png" style="display: inline;" width="80%" alt="How to call PayMe OpenAPI"/>
</div>

Because of this design, we expected to receive many more calls to the `/payments` endpoint than we expected to see on the `/token` endpoint.  
But our monitoring picked up that, for a specific API consumer, this was not the case: we were receiving _the same number of calls_. A quick look at the actual traffic confirmed that the API consumer was obtaining a new JWT token _for each API call_. 

In this case, monitoring helped us to catch an instance where **our APIs were not used as intended**.

--

Another example: the PayMe API allow a consumer to receive _webhook_ calls. A Webhook is an https call that the PayMe system make to the API consumer system, to notify about events that have happened. For instance, an API consumer may register to receive a webhook call when a `PaymentRequest` has been paid, eliminating the need for polling.  

Because of this design, we expected to receive very few (if not zero) calls to the `GET /paymentrequests/{paymentRequestId}` endpoint, because the result of a payment would have already been sent to the merchants via webhook, the moment it happened.  
But our monitoring picked up that, for a specific API consumer, this was not the case: we were receiving _a burst of_ `GET /paymentrequests/{paymentRequestId}` calls _immediately after each PaymentRequest creation_.

In this case, monitoring helped us to catch an instance where **our APIs were used inappropriately** (semantically, the API use was correct, unlike in the previous example. But there was a better way - webhooks - to perform the same function).

### Test is more than 'does it work?'

Having a set of positive and negative test cases, and run them to make sure all user journey 'work' is certainly important.. but it's not everything.  
It is also very important that you check:

1. are branding assets in the right place, in the right format?
1. is error handling implemented adequately?

This is important to address reputational risk. Your logo is likely to be present in the partner's service screen, in some case very prominently (like in the below screenshots).    

<div align="center">
	<img src="/2020/09/payme-ecomm-errors.png" style="display: inline;" width="80%" alt="Test correct branding assers are used, as well as proper error handling"/>
</div>

In this case, the specific error code (500, 429) was surfaced to the user, with no indication about what the next action (from the user perspective) would need to be... a better implementation would have hidden the technical error codes from the user, handling a 429 with a retry, and providing a better wording for the 500.

You want to make sure all aspect of the journeys implementation, including error handling, are done right… because if something is not right, the user is very likely to associate the issue with your brand, not with the 3rd party service.

## From Test to Certification?

We found useful to think in term of _certification_ rather than _testing_, as a precondition to go-live.  
We want out API consumers to meet our non-negotiable baseline for service quality (which include aspects other than just "does it work?") before we allow them to provide our service on their platforms.

Of course, this raise a new challenge, which is to determine how much effort should the certification process be.  
A startup have a higher risk appetite, and usually less resources (people, money) to dedicate to this certification... so it's our responsibility, as the most risk-averse partner, **to create a certification process that does not discourage partners** from wanting to integrate with us.

## Even better if

The above is just table stakes, you **have to** do this if you want to be successful in delivering an API product.

But nobody is in the business of delivery an API product!  
We all are - us and our API consumers/partners - in the business of providing a product to our end customers.
So the best approach is to work *together* with your partners, as in:

- your API consumers are your **partners**, not your customers
- Look for win-win solutions:
  - It’s not “my service”, “your service”, ... it's "our service"
  - What the customer see is one single service, regardlessof which company provides which part
- Prioritize in your roadmap features that make things simpler for the organizations you partner with!

Aim to build an _**ecosystem**_.

## Why ecosystem?

- Your API provide added valuethe partner’s product
- The partner’s product extend the reachof your API and brand
- The partner may provide features or cover a segmentyou don’t want to invest in

Both products (yours and partners) are more valuablethan they’ll be on their own! 

This relationship is linear if you consider each one of the relationships you have with your API partners.  
But being at the center of this network, you are in a great position to facilitate collaboration _between your partners_ as well!  
(for example, you work with an e-commerce platform and an online blogging platform, separately.

This is what enables _being part of the ecosystem_ exponentially more valuable, for both you and your partners.