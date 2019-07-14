---
draft: false
title: "Miminum Viable Architecture: The intersection between the Enterprise Architecture and Agile Development"
date: 2019-05-06
tags: [ "architecture", "agile", "mva", "mvp", "evolutionary"]
notoc: false
nopaging: false
---


## Context

There were times (and till to date) when we build grand enterprise architectures with capabilities and alternatives for each: from business to technical to infrastructure viewpoints, followed by year long development cycles. While the adoption of agile (any flavor of agile) has changed the way we think about development and start delivering incremental value, the architecture itself has either been ignored (“agile don’t need upfront architecture!”), or continues to follow a waterfall development.

This led, respectively, to two major issues: (1) Without a sound architecture, any later deviation/extension/change is very hard to accommodate, often resulting in redesigning the entire system. (2) The other extreme by architecting upfront, is that architecture becomes irrelevant as the sprints progress.

The role of the architect is then to develop minimal architecture upfront, and refine it as the sprints progress. Through our implementation experience, we learned how to work on the assumption of ‘Minimal Viable Architecture’, which is what we explain below.

## Step 1: Define Architecture Principles and Decide on the Topology

_(Do it in sprint:0 and it rarely needs to be revised as its abstracted to a great level)_

Architecture principles to technology is what vision means to the product/firm. Though architects may not call this out quite often, internally they refer to this every time an architecture/design decision needs to be taken. This could be like ‘Microservices are independent and stateless’, ‘Defining standards for all data (msg, events, API) payloads’, ‘Data Quality validated at the source’, etc.

Post defining the principles, start with the topology of the system based on the grand vision and mission of the product/application to be built. This will take into account all core internal components, as well as all external systems/endpoints to interface with.


> _Architecture principles to technology is what vision means to the product/firm. [...] Post defining the principles, start with the topology of the system based on the grand vision and mission of the product/application to be built._

Upon building the topology, finalize this ‘conceptual’ architecture by:

* Explicitly listing all core components needed for the system to function.
* At this level, it could be a list of microservice(s), application database instance(s), external API(s) to connect to perform a business function (e.g. payment service), an analytical platform to collect and store data from all data sources, etc.
* Explicitly listing all interactions between those components, the interaction type (e.g. sync API call vs. async msg queue-mediated), and their purpose.

## Step 2: Choose the Platform/Technology

_(Do it in sprint zero, and you better pray this never changes as the implications are huge)_

Unless you are starting an evergreen project, the platform is more or less chosen for you by the technology office or by history. This could be on-premise with a particular stack, or one of the cloud providers. If on-premise, the key decision is to chose the backend programing language and framework, front-end framework, database, message broker, analytics/data science frameworks. This may come as a part of one or more pre-packaged software or we will have to integrate some of them to solve the business problem. If the decision is to go with cloud, then the major question to answer is to go cloud native or cloud agnostic. Cloud Native offerings are getting mature and rival some of the well established software. Even if we want to stay cloud agnostic, major softwares are available as the marketplace offerings from the cloud vendors, making the installation and provisioning a seamless job.

> _Be it starting fresh or aligning with the platform/technology chosen by the technology office, you need to take into account the product/application growth, long term cost implication for on-premise vs. cloud, support from the respective infrastructure/software/cloud vendor, expansion into other regions, needs for cross-regional DR and most importantly security compliance of the platform._

It is very important to take into consideration not only if a tech stack is fit-for-purpose for a particular application… most are, one way or another. Other important elements to consider are: support for the cloud provider of your choice (e.g. not all languages have first-class support for serverless execution on major cloud providers), availability of expertise in your company or in your geography, etc.

### Step 2.1: Build vs. Buy

(Some) Architects were once engineers, who are passionate to build stuff. While the question of Buy vs. Build has been asked for decades, with the availability of many niche software products in the market and the PaaS/SaaS offerings from Cloud, it’s more important than ever to ask this question, not just before procuring a COTS product, but before starting to build ANY service. When in cloud, it’s alway better to pick Pass/SaaS offering (subject to Architecture Principles about cloud agnostic development, multi-cloud data management, hybrid-cloud etc.) When encountering a very niche problem, it’s almost always better to go down a product route (needs a lot of research though!) instead of burning a lot of effort on building a solution from the ground up. Unless the niche problem is your “secret sauce”, something only your company solves, in which case you’re probably already providing it as a PaaS/SaaS software offering. 

> _While the question of Buy vs. Build has been asked for decades, with the availability of many niche software products in the market and the PaaS/SaaS offerings from Cloud, it’s more important than ever to ask this question not just before procuring a COTS product, but before starting to build any service._

e.g.: Say, you need a facebook-like, twitter-like feeds platform. While we can technically build it from the ground up, the well-defined nature of the problem makes often better to adopt an existing solution, from the point of view of cost, time to market, performance and scaling, etc. 

### Step 2.2: Reusing a generic (open source) framework

For almost every generic use case (Message Broker, Workflow, Data Transformation, User Behavior Tracking, Data Governance, ...) there is likely more than one implementation available as Open Source. While there are enormous differences in adoption, maturity, enterprise support, and status within the community (e.g. independent vs backed by Apache Foundation for instance vs. backed by a commercial company), they are sound in terms of their capability, security and scaling. It is a tempting option for architects to pick them given the saving in development effort they could bring. Before taking any such decisions, beware of the following aspects: 

* Fitment to the actual Use Case - do not bend over backwards to align the business use case with the framework. You adopt the package to accelerate your development, so make sure it is so.
* Effort to make it work for you - the framework might have been developed in java and run on JVM, and say the rest of our stack is in .NET. Making it work seamlessly could be a costly exercise and beware of the effort.
* Security - ensure this fits your security standards re: authentication, encryption, key management. If not, account for the effort to retrofit it.
* Firm’s Approval - see what is the protocol to integrate such framework into the firm: source code scanning, license review, etc..
* Stability - see is the framework is used elsewhere and go over the reviews, see if there is a community or corporate actively improving it, ...
* How much to use/change - sometime the framework is very generic and designed to cover a very broad set of use cases. You may either have to pick and choose which modules to adopt, or modify the source to trim it down to what you need. If trimmed, ensure that your changes do not prevent you from incorporating future updates.

> _For almost every generic use case (Message Broker, Workflow, Data Transformation, User Behavior Tracking, Data Governance) there are partially if not fully developed open source packages available._

After answering all these questions, take a holistic decision on leveraging the framework vs. building a new framework to fit your needs. It is important to _track and record_ your decision (usually in the __Architecture Decision Registry, ADR__).

## Step 3: Map the core Business Capability to Technical tooling

_(Do it every time when there is a change to the Business Capabilities) _

With the business roadmap, topology and platform/technology; map the high level business capability to the underlying technical components. This is the first step where we start taking tooling decision which is integral to the overall software development. You are bound by the architecture principles and the technology decisions taken above. At this stage, the Topology will further be distilled to list the underlying logical and then the respective technical components. 

> _Tooling decisions are bound by the architecture principles and the technology decisions taken above._

### Step 3.1: Architecture Decision Registry

The ADR is a very simple and effective tool to ensure governance (in the good meaning of the word!), which essentially is down to:

* Concisely write down the context/assumptions
* Concisely write down the decision (and people agreeing on it)
* Concisely write down the reason supporting the decision
* Concisely write down the reason against the decision (if any)
* If applicable, set a condition (a time, or a future event e.g. the change of one of the assumptions) to _revise_ the Architecture Decision
* Possibly, link to a PoC you have done validating the key assumption/problem it is supposed to solve

> _It is important to **track and record** your decision (usually in the Architecture Decision Registry, ADR). The ADR is a very simple and effective tool to ensure governance._

### Step 3.2: Technical Debt

In real life it is not unusual to deviate from the architecture principles we set up onto ourselves. This may be due to various reasons, but it is usually a tradeoff between any of the principles and time to delivery. Or sometimes, we don’t see an immediate need for a functionality, and we design and implement a system that turns out not to be as flexible/extendable as we thought, when a new requirement comes along. What’s important is how elegantly your architecture captures it, account for it, and how you go about remediating it.

> _What is important in managing technical debt is how elegantly your architecture capture the deviation from the architecture/design principles and plan to remediate it._

One way to institutionalize this is by having a ‘Technical Debt’ list. Record any deviation in from the architecture principles or technology __as a tech debt item in your backlog__, mention the reason for the deviation, and the effort needed to remediate it. To ensure that this isn’t becoming an ever growing list, agree with the product owners to scope in x% of the overall effort (in a sprint, or whatever is your execution period/cadence) to take items from this list and close/fix it.

## Step 4: Architect, Design and Prototype the details

_(One or two sprint ahead for actual development)_

The above steps will set a strong direction to the overall technical evolution of the product/application, as well as tools and processes (e.g. the ADR, Tech Debt, ...) to ensure the product technology evolves properly. This Step 4 is a critical step, as this is when the ‘rubber hits the road’: your architecture will actually be built and realized in the coming sprints. This is also the step which deviates from a typical enterprise architecture build. As a part of multi-sprint planning, the Product Owners will have a high level overview on what will be done in upcoming sprints (call it “PI planning”, “roadmap”, “backlog”, …). As architects, it’s our role to take those requirements and see if we have the ‘Necessary Architecture’(i.e. view of all components that need to be built, technical designs in place, technical assumptions validated, etc...) in place. If not build one in the prior sprints.

> _This is critical step as this is when the ‘rubber meets the road’. This is when the architecture will be actually built and realized in following sprints._

At this stage more than ever, it’s important to stay grounded. Grounded to the business value that need to be delivered and to the pre-established architecture principles. You will work on a sprint cadence, like everyone else in the team (engineers, designers, etc, ..). While it’s important to document, don’t burn too much of your time and effort is building countless artifacts to describe ample architecture viewpoints. Have the minimal/required artifacts - build the Minimal Viable Architecture. And go on to build a small working prototype to validate key aspects of your design: security, scalability, DR, etc.. Write automated tests for this, so that adherence to the principle (and fulfilment of the NFR) can be continuously validated. This will ensure that they aren’t any deviation later on during the implementation phase, and it boosts the confidence of the overall software delivery and product delivery.

>_For the architecture build, stay grounded. Grounded to the actual business ask and the pre-established architecture principles._

## Summary

With all said, being a passionate technologist ourselves, it's critical for us to learn once again that its extremely important for us as an Architect to “Build Technology for Business, not Technology for sake of building Technology”. This can only be possible if Technology works very closely with Business; which is easy said than done as they speak different language. And we as Architects has to play that role and be a glue between business and technology folks. Finally, be an architect at mind (think broad) and be an engineer at heart (be meticulous to details while designing/executing); stay relevant and close to the developers.


## About the authors

__[Alessio Basso](https://www.linkedin.com/in/alessiobasso):__ Alessio is a Solution Architect working for a small startup within a big corporation, where he use technology to deliver products that are scalable and evolvable. His specialties are simplifying and optimizing complex information systems. He is based out of Hong Kong.

__[Baranitharan Venkatakrishnan](http://www.linkedin.com/in/baranitharan-v)__: Barney is Enterprise Architect working with multiple clients in transforming and realizing their business capabilities to products, platforms and solutions. At heart he is a Data Engineer evolved into an Architect specialized in Data & Cloud. Barney is based out of US and he support clients around the world.

---

This post have been reposted on LinkedIn: https://www.linkedin.com/pulse/minimal-viable-architecture-intersection-between-enterprise-basso/