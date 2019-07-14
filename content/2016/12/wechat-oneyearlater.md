---
draft: false
title: "Let's chat about WeChat… one year later"
date: 2016-12-14
tags: [ "WeChat", "platform", "API" ]
notoc: true
nopaging: false
---

Almost a year ago I started working with WeChat… I prepared a small intro, but did not share it widely back then.

This evening I presented it - updated- to the Hong Kong [codeaholics meetup](http://codeaholics.io).

Enjoy!

<iframe id="talk_frame_372754" src="//speakerdeck.com/player/b268bd2b27564a07ac5982f73005e7b2" width="710" height="399" style="border:0; padding:0; margin:0; background:transparent;" frameborder="0" allowtransparency="true" allowfullscreen="allowfullscreen" mozallowfullscreen="true" webkitallowfullscreen="true"></iframe>

When we talk about "WeChat" (or "WeiXin", 微信), most think of one of many smartphone apps used to chat. And this is true - as the app's main window contains a list of your friends' contacts ([slide 3](https://speakerdeck.com/alexdown/lets-chat-about-wechat-dot-dot-dot-one-year-later?slide=3)).

When you tap on one of them, you can do pretty much all you expect to do in other messaging apps ([slide 4](https://speakerdeck.com/alexdown/lets-chat-about-wechat-dot-dot-dot-one-year-later?slide=4)): send text, images, voice and video clips, files, location (also in realtime!), make voice and video calls…

Another interesting feature of WeChat is the "Moments" ([slide 5](https://speakerdeck.com/alexdown/lets-chat-about-wechat-dot-dot-dot-one-year-later?slide=5)), a sort of Facebook wall where you can share, like and comment posts amongst friends in your contact list. There is no machine-generated spam (for now, at least ;), and each post is visible by default only to your contacts (no flicking through complex privacy settings, etc…)

The __key feature that bridges the online world of your likes and messages with the offline world is the wallet__ ([slide 6](https://speakerdeck.com/alexdown/lets-chat-about-wechat-dot-dot-dot-one-year-later?slide=6)). You can link your debit card with WeChat wallet, and use it to pay for services both online (more in a moment) and offline, by having your QR code scanned at the cashier. 
The QR code "identifies" your wallet account, and changes (for security reasons) every 60 seconds. The payment can be both pull (cashier scans your code) or push (you scan the shop's QR code); QR code can also be generated so that scanning it "pre-fills" the amount to be transferred before the user confirm the payment.  
__Using QR codes__ also enable the merchant to use whatever technology he prefers: big chains will integrate it with their own POS systems, but a small street vendor can just download an app and be able to accept payments in few minutes, no investment required.

Scrolling through the Wallet home screen ([slide 7](https://speakerdeck.com/alexdown/lets-chat-about-wechat-dot-dot-dot-one-year-later?slide=7)), you see several "obvious" features (e.g. link your card, balance, …), and some less obvious ones (e.g. red packet, go dutch, charity) provided by Tencent itself. These __are aimed to have you use the wallet as much as possible during your daily routine__, by simplifying some very frequent actions (e.g. split bills, pay utilities, buy bus tickets, …)  
You will also see - down at the end of the screen - __some features provided by "third party operators"__. This is where it gets interesting. Tap on it, and a web page will open in a browser integrated within the WeChat wallet/app. The page can access some device features - for instance location - like if it's running inside a normal browser, and provide any feature (in the screenshot: movie/ rail/ flight tickets, order taxi, …). The important part is that it's a feature _linked_ inside the wallet, _using_ the wallet for some things (e.g. pay for the service), but _not provided by Tencent_. These are third party companies, they are _embedded in the wallet_ in the sense that _there is a link to their mobile-optimised web page_ within the wallet.

This is one way your company's service can be "embedded" in WeChat. Unfortunately though, there is not much space in the wallet home screen, and that's usually reserved for big companies that have agreements with Tencent (e.g. Didi, China Railways, …).

Let's see what options are available to everyone else ([slide 8](https://speakerdeck.com/alexdown/lets-chat-about-wechat-dot-dot-dot-one-year-later?slide=8)).  
__Your contact list__ doesn't contain only your friends. It __can also contain two (three) types of "contacts", called "official accounts"__. They are either in the main contacts screen, or grouped under an "Subscription" folder. The main difference is the number of messages that the owner of an official account (a brand, a company, …) can send to the user in a given timeframe.

Both subscription and service accounts behaves as normal chat window ([slide 9](https://speakerdeck.com/alexdown/lets-chat-about-wechat-dot-dot-dot-one-year-later?slide=9)), like any other contact. The __user can send messages__ (text, voice, files, etc) to them, and some tools are provided by Tencent to create some automations - e.g. autoresponders based on keywords can be configured. Or, __the messages can be forwarded to the official account owner server__ (a https call is made to a webhook URL with the request payload including the message and some metadata). These messages can be text only, or "media" messages, containing images and links. The links opens - of course - in the WeChat embedded browser.  
At the bottom of the chat window, __the input box can be replaced by a set of three "menus"__ (can include up to 5 sub-menus)… clicking on one of them will generate a message sent via the webhook above or - if a link is configured - a web page will be opened in the WeChat embedded browser.  
It's like the "apps" we've seen linked in the Wallet home screen. Just, they are the "big" ones. All companies that are not big/famous/connected enough to be featured there, can create pages linked within their Official accounts.

We've seen __we can create interactions in chat using messages__. We may want to do something more sophisticated than setting up autoresponders based on keywords. We can configure, in the official account admin page, the URL of a server that will receive callbacks. When a message is typed in the chat window, an xml message is sent to this URL ([slide 10](https://speakerdeck.com/alexdown/lets-chat-about-wechat-dot-dot-dot-one-year-later?slide=10)). Your server program can read it (pay attention to MsgType and Content especially), and send a meaningful, context-based reply.  
For instance, in the slide, an e-commerce website can provide order status enquiries by checking if the message contains some sort of order identifier.

__Message processing can get more sophisticated__. Bots have been "the cool thing" for most of 2016. We could ([slide 11](https://speakerdeck.com/alexdown/lets-chat-about-wechat-dot-dot-dot-one-year-later?slide=11)) send the message to any of the NLP services out there ([Microsoft LUIS](https://www.luis.ai/applicationlist), [api.ai](https://api.ai/), or - in the example - [wit.ai](https://wit.ai/)), use them to extract an "intent" from a sentence expressed in natural language, and act accordingly.

Interactions can be asynchronous, too. Official account owners ([slide 12](https://speakerdeck.com/alexdown/lets-chat-about-wechat-dot-dot-dot-one-year-later?slide=12)) can send messages too, not only reply to messages originated by the user. There is a limit to the number of "unsolicited" messages that can be sent (at the time of writing, 1 per day to subscription accounts, 4 per month to service accounts), while there is no limit to replies to "user events".

As mentioned, when a user clicks on a menu link, or on a link included in a text/link/image message (better: __when the user clicks on anything within the WeChat window__), and event message is sent to the server registered with the Official Account ([slide 13](https://speakerdeck.com/alexdown/lets-chat-about-wechat-dot-dot-dot-one-year-later?slide=13)). If the event was associated with a link (e.g. menu items, media messages with links, …), the URL is then opened in the WeChat embedded web browser.

The page can be a normal web page running inside a browser, but ([slide 14](https://speakerdeck.com/alexdown/lets-chat-about-wechat-dot-dot-dot-one-year-later?slide=14)):  

* when it's running in the WeChat embedded browser, and
* loaded from an authorised domain, and
* provide a valid auth token/signature

__it has access to some javascript API (via the global wx.* js object)__.
Each API calls can have various returns value, and events that helps the developer to control how his/her application (in the web page) interacts with the WeChat app.

There are several features ([slide 15](https://speakerdeck.com/alexdown/lets-chat-about-wechat-dot-dot-dot-one-year-later?slide=15)) provided via this Javascript API, from basic "messaging" features to __advanced ones like scanning a QR code, pick a coupon, auto-login on a WiFi hotspot, or pay via the wallet__. They're updated pretty often, so make sure to check [the guide](http://admin.wechat.com/wiki/index.php?title=Main_Page)! ([chinese version](https://mp.weixin.qq.com/wiki) is maintained better than the english one).

All of the above - __some Javascript, and a web browser - was pretty much all the "WeChat platform" everyone was talking about__. Until September 2016, when Tencent introduced "mini-apps" ([slide 16](https://speakerdeck.com/alexdown/lets-chat-about-wechat-dot-dot-dot-one-year-later?slide=16)).  
Mini apps are still essentially web apps, but made of non standard markup/css, non standard JS api, and don't provide a "typical" dev environment (e.g. no support for npm). Also, they can't access the _document_ object nor the DOM, and they must be developed using an IDE provided by Tencent itself.

__The main idea is to provide a set of UI elements that are optimised by Tencent__, so to have consistent performances amongst all "apps". So far, in the official account world, the quality of an "app" (e.g. a web page opened inside the WeChat browser) depended very much on the Javascript UI library the dev has used - some results were excellent, some were far from ideal). You can find a [demo](https://github.com/xwartz/wechat-app-demo) ([slide 17](https://speakerdeck.com/alexdown/lets-chat-about-wechat-dot-dot-dot-one-year-later?slide=17)) [on github](https://github.com/xwartz/wechat-app-demo) (needs to be opened using [Tencent's IDE](https://mp.weixin.qq.com/debug/wxadoc/dev/devtools/download.html?t=1474644089359)).

In addition to the optimised UI widget library, there are ([slide 18](https://speakerdeck.com/alexdown/lets-chat-about-wechat-dot-dot-dot-one-year-later?slide=18)) a simplified WeChat login feature, Canvas support, Local storage, Websockets, more hardware sensors (compass, accelerometer), ….  
Also - and most important - WeChat mini-app __can be added to the home screen__. As such, they'll look just like any other app… except that they don't need to be installed.

If you search online, there are at least 3 (or 5/6, depends how you look at them) different SDKs/libraries ([slide 19](https://speakerdeck.com/alexdown/lets-chat-about-wechat-dot-dot-dot-one-year-later?slide=19)). Some are about official accounts, some are native SDK, many are about payments - in-app, from browser/pc, from official account, in-store via QR code, …). Not easy to understand which one can be used to solve which particular problem. 
It's really like there are too many options, with functionalities sometimes overlapping ([slide 20](https://speakerdeck.com/alexdown/lets-chat-about-wechat-dot-dot-dot-one-year-later?slide=20)), so it's hard to determine which one is better to use for which particular task :). Developer's doc can certainly be improved, in this sense.

There are already a few companies providing services on top of WeChat. Some for instance ([slide 21](https://speakerdeck.com/alexdown/lets-chat-about-wechat-dot-dot-dot-one-year-later?slide=21)) provide a "call-centre" like web UI to monitor and service incoming customer enquiries. One drawback is - most big players, usually western, which you may already be using, do not really support WeChat.  
Another service for instance provide a platform to [create and manage your e-commerce store](http://www.tmogroup.asia/wechat-store-development/) "within WeChat".

Beyond WeChat ([slide 22](https://speakerdeck.com/alexdown/lets-chat-about-wechat-dot-dot-dot-one-year-later?slide=22)): Whatsapp have no public API, and actively ban numbers of applications that interface with their servers using the FunXMPP protocol. Line has a "business connect" proposition similar to the WeChat one, but lacks the online-to-offline proposition (the Wallet), and it's not as ubiquitous as WeChat is in mainland China.

Facebook Messenger ([slide 23](https://speakerdeck.com/alexdown/lets-chat-about-wechat-dot-dot-dot-one-year-later?slide=23)) evolved their platform greatly during 2016. It started with basic features to "share with messenger", then onto a beta testing of bots (the called "business on messenger"), then announced publicly at F8 in April. In doing so, __it initially made the mistake of assuming that most interaction did happen via messages and conversations__. It did not implement the possibility of having rich visual interactions via an html UI, just small graphic elements within the message itself.

Facebook recently changed this approach, __basically copying payment JS and webview-in-chat functionalities from WeChat__ ([slide 24](https://speakerdeck.com/alexdown/lets-chat-about-wechat-dot-dot-dot-one-year-later?slide=24)). They were not in the initial version of the platform, but they made a lot of sense, and the feedback gathered during the initial beta was likely that people are not yet ready to have complex interactions with an application (a "bot") in a conversational way.

There is also a "pay with Facebook" button feature… whose JS API is not following any standard.  
As payments is a key feature, W3C "Web Payments [Interest Group](https://www.w3.org/Payments/IG/)" and "Web Payments [Working Group](https://www.w3.org/Payments/WG/)" have been working during 2016 to standardise the interface. __The key idea is that a [PaymentRequest](https://www.w3.org/TR/payment-request/) object be sent by the web page to the browser, and it's the browser that will fulfil that request with whatever payment method is available in the OS native wallet__ (could be Apple Pay, Samsung Pay, etc…).  
__This has been have been implemented recently by [Google in Chrome](https://developers.google.com/web/updates/2016/07/payment-request), and by [Microsoft in Edge](https://t.co/0RPXRjMqp2)__. Apple is just pushing ApplePay JS API for Safari - different from the above mentioned standard, even if the W3C working group had representatives from both Apple, Google and Microsoft.

<div align="center">---</div>

The landscape is going to evolve pretty quickly in 2017 as it did in 2016.

We are going to see __the real impact of WeChat mini-apps__ (i.e. how many service accounts will actually convert into/ provide mini-apps), as well as the __take-up of Messenger for Business__.

__Google Assistant__ has been recently launched, and will battle with the likes of both Siri on smartphones and Alexa on home devices.

On the NLP/bot side, most of the small startups have been acquired by big players (wit.ai by Facebook, api.ai by Google), their service been integrated in the above mentioned product so that they're even easier to use with.

Interesting times ahead! Stay tuned for the next episode! :)

---

This post have been reposted on medium: https://medium.com/@alxdwn/lets-chat-about-wechat-one-year-later-a7c039aabfe4