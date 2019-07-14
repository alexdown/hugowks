+++
draft = false
title = "A Better Octopus Card"
date = "2016-02-15"
tags = [ "payments", "contactless", "platform", "API" ]
notoc = true
+++


[Octopus card](http://www.octopus.com.hk/home/en/index.html) is, by all standards, a success story. Introduced in 1997 by a consortium of railway and bus companies, for transit ticketing purposes, it subsequently expanded to other payment usages (restaurants, parking, convenience stores) following [Hong Kong Monetary Authority](https://en.wikipedia.org/wiki/Hong_Kong_Monetary_Authority) granting Octopus' operating company a deposit-taking license.

Pretty much everywhere you go in Hong Kong, you can pay with Octopus. It's as close as one can get to a cashless society utopia.
But is it, really?

## It's stored-value

You need to top-up an Octopus card to use it, and you can spend only the money you loaded on the card. Octopus' operating company operates as a Deposit-taking company, not under the Banking Ordinance. 

All the [regulation](http://www.hkma.gov.hk/eng/key-functions/banking-stability/banking-policy-and-supervision/multi-purpose-stored-value-cards.shtml) there is on the matter amounts to a:

> *Octopus Cards Limited [...] has __voluntarily__ issued a non-statutory [Code of Practice for Multi-purpose Stored Value Card Operation](http://www.hkma.gov.hk/media/eng/doc/key-functions/banking-stability/banking-policy-and-supervision/code_of_practice_OCL.pdf). The HKMA has endorsed the Code, and will review it from time to time and monitor the compliance.*

This means these deposits are not protected under the [Deposit Protection Board](http://www.dps.org.hk/en/membership.html), should the operating company bankrupt.

And it's a lot of money. A [report](http://www.china-community.de/index2.php?option=com_content&do_pdf=1&id=45) from 2000 mention that the total balance stored on all Octopus cards amounts to 416 millions HKD. This when there were 10 million cards in circulation. Recent figures from Octopus ltd. [company profile](http://www.octopus.com.hk/web09_include/_document/en/company_profile.pdf) talks about 29 million cards in circulation, and if we still consider an average balance of 63-66 HKD per card, it's 1.8-1.9 billions HKD (245 Million USD) that Hong Kong people lend to Octopus ltd. (which is MTR and, ultimately, the HK government), at any given time, **interest-free**.

## Transactions do not require authentication

Transacting using Octopus is very easy: tap on a reader, hear the "beep" and you're good to go. This is a key advantage of the system but also a key weakness. Transactions are not individually authorised. That means that everyone in possession of a card, can transact using that card. There is no further verification. 

And while this may have been ok in 1997, the recent trend is to authorise each transaction, by mean of PIN or fingerprint verification. Also, after the introduction of [AAVS](http://www.octopus.com.hk/easy-reloading/top-up-with-aavs/apply-for-aavs/en/index.html), a card is automatically topped-up, charging a linked credit card, if its balance goes below a threshold: the fact that the Octopus card can hold only a small balance is no longer a risk mitigating factor.

## Liable for usage of lost cards

If you report your card as lost, __you are still [liable for transactions happening in the first 3 hours](http://www.octopus.com.hk/customer-service/lost-octopus-reporting-service/sold-octopus/claim-balance-refund/en/index.html) after your report__.

This is very, very bad service. Lost card reports can be filed only via phone, and the hotline is open 24/7. There is no reason why Octopus ltd. can't block a card at the same time a report is made, so that it can't be used anymore. If the 3-hours value is related to the time needed to propagate a "blacklist" update on all online terminals, then it's a technical issue, and the customer should not be paying for it.

Also, some offline terminals go online (to submit transactions) once a day, so Octopus ltd. is still taking liability for unauthorised transactions on these terminals from 3 hours after the lost card report until the end of the day. This suggest that Octopus ltd. is using the arbitrarily determined 3-hours window as a mean to offset losses derived from fraudolent transactions that can't be blocked immediately due to technical limitations of the system. The customer pays for the company's risk of doing business.

## Manual processing

There is only circumstantial evidence that most of the backoffice processing is still manual, but consider that:

1. Out of 21 banks that offers AAVS, only 6 offers an online service to do so. The other, paper, or FAX.
No matter if the request is submitted in electronic or paper form, it is an "application", which [_"normally takes two to three weeks"_](http://www.octopus.com.hk/easy-reloading/top-up-with-aavs/apply-for-aavs/en/index.html) to process.
2. Other services (e.g. [activate online payments](http://www.octopus.com.hk/customer-service/checking-your-balance-and-transactions/octopus-app/en/index.html)) also take at least 24 hours to activate.

This strongly suggest that most of the backoffice processing is still done manually. It is maybe ok in a city like Hong Kong, where there are only 7 million people and the customer base is overwhelmingly already "set up" (most accounts are already created, most services are already activated). But can it scale? No.

## Market penetration

Octopus readers in Hong Kong are commonplace, but how did we get to this state? Mainstream adoption for non-transit application came after the decision of certain restaurant and convenience store chains to support the system.

Given that the Hong Kong economy is very concentrated in few big groups, a single conglomerate's decision to accept Octopus translated into hundreds and hundreds of stores. It's easy to imagine that very high market penetration can be achieved pretty quickly in such an environment.

Still to be seen if this can be replicated elsewhere, where the merchant ecosystem is much, much more fragmented.

## And what about the future?

One of the downsides of the Octopus system is that it is so commonplace and convenient, that nobody consider or even know of alternatives. Most supermarkets in Hong Kong accept also Paywave/Paypass, but they either have a minimum transaction amount, or the staff doesn't know how to operate the terminal.

Some says **_Octopus Card is so widely used in Hong Kong, that it blocks further development in the payment space_**.

Some spin-offs, like the [online payment](http://www.octopus.com.hk/get-your-octopus/where-can-i-use-it/list-of-places/online-payment/en/index.html), are brilliant, and may suggest this is not the case. Competing offers are entering the market, too, with [Alipay](http://www.chinadaily.com.cn/hkedition/2015-01/29/content_19434201.htm) expanding its brick-and-mortar stores acceptance, and WeChat Wallet [launched in HK](http://www.scmp.com/tech/apps-gaming/article/1906504/tencents-wechat-wallet-lands-hong-kong-beating-apple-pay-public) last week.
Interesting times ahead!












