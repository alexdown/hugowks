+++
draft = false
title = "Debunking WeChat"
date = "2015-12-08"
tags = [ "WeChat", "platform", "API" ]
notoc = true
+++


<a name="tagline"></a>

> A no-frills description of what WeChat really is. 

<img src="/wechat.png" style="display: inline;" width="100%" /> 


<a name="intro"></a>
I’ve been reading for a while articles about [WeChat](http://www.wechat.com/en/), a Chinese “mobile instant messaging cum social media” very popular in Mainland China ([and not only](http://www.forbes.com/sites/jlim/2014/05/19/wechat-one-of-the-worlds-most-powerful-apps/)).

Most of them are a mix and match of:

- screenshots of features provided by either Tencent, Tencent’s partners, or brands’ 3rd party developers, delivered as part of the app, wallet, or embedded web browser
- description of how WeChat is a “platform” capable of delivering any service imaginable (add again lots of use cases, some really existing some not)
- usually, an ending highlighting how this is the future of apps and how all western apps should follow Tencent’s footsteps

But really, what is WeChat?

Here is a brief description of __the features the app actually provides__. I’ll leave to you to think of the next big thing you can deliver on top of it.

<a name="chat"></a>
### It’s essentially a chat app ###
Core feature is the chat: you can send and receive messages (text, photo, voice, video, stickers…) with your friends, “add” them to your contact list by WeChat ID or phone number (the app can scan your contacts looking for friends that have a WeChat account).

A few nice features on top of it: voice and video call, share location (static or real-time), files, contacts, …

<a name="socialnetwork"></a>
### It’s a social network ###
Each user have its own “wall”, called “moments”. A user can post updates (text, pictures, links, videos) that are visible to his/her own friends. Sort of like facebook, but more private (no “public” posts). You can also find other users nearby, or start chatting with random users by “shaking” your phone.

<a name="accounts"></a>
### What the fuss is all about: 1) accounts ###
The element that “drives engagement”, so to speak, are the accounts. There are various flavours (subscription, service, enterprise) with some difference in terms of how many messages can be sent over a period of time, and what can be done with the account (e.g. accept payments, create groups, …), but at their core, they are a way for customer to “follow” brands, and for brands (so far, only if the company is registered in Mainland China) to send messages to their followers.

Followers can send messages to the “brand” account. Brands can setup auto-reply messages correspondent to some keywords.
Followers can also tap on “menu items” (the bottom part of every service/subscription account can have “menus”, configured by the brand). Each tap generates a message that is sent to the brand’s server; this can reply with messages (media, text, links), more “customised” than the simple static auto-reply based on keywords that I described above.

<a name="webapps"></a>
### What the fuss is all about: 2) web apps ###

Menu items can also be links. Links are not opened in the phone’s browser (Safari/Chrome), but _inside a web browser embedded in the WeChat app_.

This is where all functionalities “live”. When you book a taxi, buy a movie ticket, pay utilities, transfer money, donate to charity, shop online, browser group buy offers, “_via WeChat_”, __you most likely do it via a mobile-optimised web site accessed using the WeChat browser__.

I can’t stress this enough. __I believe that WeChat is an incredible driver for adoption of mobile web development techniques__. While in the West companies are still native-first (usually iOS-first), in China the most important presence one may have is a mobile-optimised website.

<a name="wx"></a>
### And what about “the platform”? (wx.*) ###

There are indeed advanced functionalities. Receiving notifications of every single action the follower performs in the service account screen (see above) is a very powerful tool, that allows developers to create complex interactions based on the “chat” UI metaphor.

The service account developer have also access to server-side APIs, that can be used to query on follower’s details (age, gender, hometown, …).

The mobile-optimised web pages running inside WeChat embedded browser have also access to javascript API (wx.*) that allow to share content, send message, process payments using the credentials enrolled in the WeChat wallet… (yes, I know there are [native iOS and Android API](http://dev.wechat.com/wechatapi/documentation), too).

If you want to know in detail what you can do (and how), go to the [dev site](http://admin.wechat.com/wiki/index.php?title=Main_Page).


<a name="more"></a>
### You got me! I’m hooked, tell me more!! ###
I said I was going to be brief, and I will. All I wanted to do was to highlight the features that WeChat __actually provides__, because most articles I read online are almost always misrepresenting these features in one way or another.

That’s what WeChat is. How to use it, I’ll leave it to your imagination!

---

<a name="ps"></a>
__PS:__ I wrote this piece after reading an article that — although nice read — was… a bit hyperbolic in some parts. See if you can find the hidden link! ;)

---

This post have been reposted on medium: https://medium.com/@alxdwn/debunking-wechat-e5805e358f8