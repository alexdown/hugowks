---
draft: false
title: "My Very Own Azure Saturday"
date: 2017-07-03
tags: [ "Cloud", "Azure", "Microsoft" ]
notoc: true
nopaging: false
---

Last week, Scott Guthrie was in London and gave a ‘private’ presentation about Azure to some teams in the company I work for…

I could not be there in person, but I’m told the below video has pretty much the same content… so I watched it.

<blockquote class="twitter-tweet" data-lang="en"><p lang="en" dir="ltr">couldn&#39;t be in London yesterday, so watching <a href="https://twitter.com/Azure?ref_src=twsrc%5Etfw">@Azure</a> demo by <a href="https://twitter.com/scottgu?ref_src=twsrc%5Etfw">@scottgu</a> today ..my own <a href="https://twitter.com/hashtag/AzureSaturday?src=hash&amp;ref_src=twsrc%5Etfw">#AzureSaturday</a> ;) <a href="https://t.co/XJBOgqrcKT">https://t.co/XJBOgqrcKT</a> <a href="https://twitter.com/hashtag/cloud?src=hash&amp;ref_src=twsrc%5Etfw">#cloud</a> <a href="https://twitter.com/hashtag/Azure?src=hash&amp;ref_src=twsrc%5Etfw">#Azure</a></p>&mdash; Alessio Basso (@alxdwn) <a href="https://twitter.com/alxdwn/status/878567308406407170?ref_src=twsrc%5Etfw">June 24, 2017</a></blockquote>
<script async src="https://platform.twitter.com/widgets.js" charset="utf-8"></script>

If Scott’s goal was to leave you with that crazy urge to try out Azure and build something, he was definitely successful! Great demo and great stuff from Microsoft.

If you don’t have 3+ hours to spare to watch it all, I took some notes (see below).

What‘s the most interesting part, in your opinion?

<div align="center">---</div>

## Part 1

<iframe src="https://channel9.msdn.com/Events/Microsoft-Azure/Azure-Red-Shirt-Dev-Tour-London-2017/Part-1-Azure-Red-Shirt-Dev-Tour/player" width="600" allowFullScreen frameBorder="0"></iframe>

23:58 Security center

28:00 just in time admin access

40:00 use Windows license you already bought on-prem (Software Assurance - Hybrid Use Benefit)

42:40 App Service have windows AND LINUX (you can specify that your app being hosted on linux hosts if you so wish, and you can upload it also as a docker container)

53:20 App Service deployment slots and App Service Environments

57:47 CICD with VSTS (support also github or git for source!). Can provision environments for load test before pushing to prod. Can deploy to staging slot before swapping to master

65:20 VS live debug on iOS without needing a mac

72:20 VS mobile center (CICD, works with projects on github too, device test with Test Service, UI test automation with both xamarin, ios android, distribution to alpha/beta users via hockeyapp, collect crash logs and user analytics automatically)

## Part 2

<iframe src="https://channel9.msdn.com/Events/Microsoft-Azure/Azure-Red-Shirt-Dev-Tour-London-2017/Part-2-Azure-Red-Shirt-Dev-Tour-London/player" width="600" allowFullScreen frameBorder="0"></iframe>

9:15 SQL db (managed) have auto patching, point-in-time restore back 30 days by default, included machine-learning-based database performance analyser (for both dB structure and usage by the app e.g. queries). Also show performance before/after an optimisation

20:05 elastic mySQL as a service (managed dB) (albeit still in preview)

24:55 cosmosDB

45:16 containers (VS allows to add docker and dockercompose support to legacy app, also with remote debugging across containers - even if different app layers are deployed in different containers)

56:42 service fabric

58:46 serverless computing

1:00:13 Azure Functions demos

1:07:27 __*he says "make sure it's running" and click on the "run" button before creating the trigger… why? code in a function is *not* "running", by its very own definition! it'll run when the trigger even triggers ;)*__

1:10:30 debug azure function with VS (functions runtime is executed on your local machine even though listening for triggers remotely on Azure)

1:16:30 Azure Logic Apps (sample of twitter sentiment analysis - create a CRM case in response to a negative tweet)

1:23:42 Cognitive Services

1:30:00 Azure Stack

1:37:25 Pitch for MS partners :) - on how to integrate app with Office365, PowerBI… to upsell to companies already MS customers

1:39:01 App Source

## Part 3

<iframe src="https://channel9.msdn.com/Events/Microsoft-Azure/Azure-Red-Shirt-Dev-Tour-London-2017/Part-3-Azure-Red-Shirt-Dev-Tour-London/player" width="600" allowFullScreen frameBorder="0"></iframe>

00:30 custom dashboards

04:29 Azure Advisor

09:30 VM auto-shutdown

11:00 Availability Sets

13:52 managed disks

20:51 VM Scale Sets

25:00 VM Scale Sets autoscale rules, management in the azure portal, reimage,

32:25 Azure Security Centre

35:32 security alerts (also aggregate logs from cisco or barracuda security appliances)

42:38 Role Based Access Control

45:56 Activity Log (audit on Azure tasks - API and web portal)

53:00 Azure AD Connect

54:22 Azure Monitor (activity log, metrics, diagnostic logs (API so you can pull them into splunk), log search, network watcher (network topology), Alerts)

1:05:15 Diagnose and Solve Problems (specific resource health check, VM boot diagnostics, resource specific support tickets (for Premier support plans too))

<div align="center">---</div>

What's the most interesting part, in your opinion?

---

This post have been reposted on medium: https://medium.com/@alxdwn/azure-cloud-f32c150db969