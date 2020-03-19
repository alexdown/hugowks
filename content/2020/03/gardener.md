---
draft: false
title: "Thoughts on the role of Technology Architects"
date: 2020-03-19
tags: [ "architecture", "teams", "management"]
notoc: false
nopaging: false
---

I was reorganizing some files today, and found some (handwritten! :) notes from years past... worth posting them, although they're not very structured.

## On the Role of the Architect

If I look at how I spend most of my time... Technology Architects/ Technology Strategist do three things:

* set directions
* make decisions
* solve problems

(not my definition, by the way... [David expanding on what this means](https://www.linkedin.com/pulse/you-solution-architect-problem-david-knott-1c/))

## On centralized "platform" teams

Platform as a Service is very similar in the way most old style IT programmes were: you built a central reusable service because it's cheaper to operate common services centrally than reinvent the wheel every time.
The difference here is in how you design and build this.
It's not a central-team-led, super-extensible architecture to fit every single possible use case, like in the past.
The secret is start simple, with one or few use cases that are the most immediate, and deliver these with an eye to building a service that is extensible.

https://gds.blog.gov.uk/2015/08/25/common-technology-services-technology-is-a-tool-not-a-barrier/ well explain the (good) intentions of how many "central infrastructure" models start. Great idea on paper, hopefully it won't become sclerotic as things go along.... those teams should be designed to **not impede agility**, to help teams pick the right tradeoff between total freedom and contain expenses/complexity.

We may use a vendor (with a vendor product) to speed things up -- of course, keep always in sight what is that we want to deliver. In selecting the vendor, do not rate features for features' sake, but pick the one vendor that let you deliver the MVP (ok, maybe MVP+1 or MVP+2 😃), but that also is structured in a way you can plug, play and replace services. You will not live with a service forever, so think about how easy is to handle it rather than how elegant it is. Code is disposable - that's another great idea from a colleague ([Nic](http://nic.ferrier.me.uk/)) that's very hard to get people to accept.

Such central services may even be developed/delivered by a department's team -- no need _for the team_ to be centrally located/managed (as in "from HQ"). The key here is for the team to consider the "platform" requirements of extensibility and decoupling as priority. A central team may help make sure that these don't get lost as the project (and the pressure to deliver) progress.

There are some "infrastructure" project that are more suitable for central development and delivery "as a Service": Payments, Notifications, Identity, etc... these are also the service that many organisations chose to deliver centrally. Not a coincidence.

## On governance

The central team should implement "governance" not in a "governor" way, but in a "gardener" way. You know the gardener's metaphor?

IT architects (or central strategy teams, or CIO, or... call them how you prefer) are more like gardeners that oversee a garden growing. they do not mandate exactly how each plant will grow - that would be impossible.

What they can do is keep an eye on the big picture and how every single area of the garden and each plant evolves - or in our metaphor, how other gardeners plan to change and let it grow in the near future - and make sure that the whole is coherent. Details are typically not important, unless they prevent two different areas of the garden from "looking good" next to one another in the big picture (in IT parlance, **siloed applications built with no interface**).

## On enterprise adoption of technologies

The methapor works very well to cover small projects ran with the goal of acquiring know-how or technologies. Those are like growing a specific tree in one area of the garden, where you have empty space so it doesn't matter much to have one additional plant, as it doesn't bother the other plants...
When it starts growing though, you may have to transplant it, and maybe create a special area od the garden just for it.

It's the case for when you adopt a technology as secondary goal on a project whose goal is to deliver something else. You can incubate it there, but soon enough - if the tech is really strategic - you'll have to move it somewhere independent for it to grow further.

As https://gds.blog.gov.uk/2016/05/11/what-government-might-look-like-in-2030/ says:

> we’re setting and defining standards for whole services and good service design
    - we’re building, or helping departments to build, new common components that make services easier to assemble - a shared digital infrastructure
    [...]
    The formal strategy document will be published in due course. But a strategy document doesn’t matter as much as running code - [...]""

What matters is running code -- and delivering on it is so much easier if there is an associated business goal to be delivered together with it.

When you first grow this plant, you don't have anything 'proper' around it: no landscaping, no irrigation... nothing. It's ok. No need to focus on the surroundings, no need to build a whole interconnected IT ecosystem if it's really too early and all you're doing at this stage is just playing with a technology.

## On managers building "kingdoms"

Similarly, if you plant a new plant and it grows, but kind of anemic and you can't really find it a place where to transplant it, or anywhere else in the garden where it looks good... it's ok to get rid of it altogether.
The key here is make sure that gardeners who took care of it have something else to do, or that they don't take it too seriously and start wagering wars to keep their beloved plant in the garden.

## On vendors vs. internal, buy vs. build...

Vendor enable flexibility. It allows you to scale very quickly, get the right skills onboard...
However, big vendor contracts is a form of lock in. Most big corporations have "agreements" with a few big vendors. While these big vendors can somehow address all of a big organisation's needs, they do it expensively.
Most times it's not the right way. Small local companies may do things better. Be small, and hence more approachable. Less waste, and less "lost in translation" on multiple layers of management.

## On what "digital" is

I'm going to give you the frontpage answer - before I give you the technologist's one.
Digital is about connecting with the customer, in the way they - not you - would find it convenient.
Technologist's answer is sightly different. It's still about the customer, but focussed on solving with technology only the problems that are worth being solved.
This means we're not idealists nor mere executors. We don't do tech for the sake of it, nor we just build stuff our "business" asks us to build.
We work together to establish what makes sense (from a technology, service, cost perspective), and help making decisions on tradeoffs.

## Some quotes

From https://gds.blog.gov.uk/2015/10/05/status-tracking-making-it-easy-to-keep-users-informed/

> "So we’ll also be prototyping an interface that will let back-office staff send notifications directly, without any integration to existing systems. This might be an individual text message from a caseworker or perhaps a batch of receipts uploaded in a spreadsheet that post-room staff created.
    At this stage, we don’t think this platform should do much more than these things. It’s important to us that platforms do simple things really, really well"

From https://gds.blog.gov.uk/2015/11/03/making-data-a-public-asset-through-infrastructure/

> "This ecosystem isn't the result of a grand design. It’s the result of a series of pragmatic decisions made in the context of individual organisations and services, based on (mostly internal) user needs, cost, and available skill sets."

