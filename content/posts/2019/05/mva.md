---
draft: true
title: "Miminum Viable Architecture: The intersection between the Enterprise Architecture and Agile Development"
date: 2017-07-31
tags: [ "architecture", "agile", "mva", "mvp", "evolutionary"]
notoc: false
nopaging: false
---

## Context

There were times (and till to date) when we build grand enterprise architectures with capabilities and alternatives for each: from business to technical to infrastructure viewpoints, followed by year long development cycles. While the adoption of agile (any flavor of agile) has changed the way we think about development and start delivering incremental value, the architecture itself has either been ignored (“agile don’t need upfront architecture!”), or continues to follow a waterfall development.

This led, respectively, to two major issues: (1) Without a sound architecture, any later deviation/extension/change is very hard to accommodate, often resulting in redesigning the entire system. (2) The other extreme by architecting upfront, is that architecture becomes irrelevant as the sprints progress.

The role of the architect is then to develop minimal architecture upfront, and refine it as the sprints progress. Through our implementation experience, we learned how to work on the assumption of ‘Minimal Viable Architecture’, which is what we explain below.

## Step:1 - Define Architecture Principles and Decide on the Topology

_(Do it in sprint:0 and it rarely needs to be revised as its abstracted to a great level)_

Architecture principles to technology is what vision means to the product/firm. Though architects may not call this out quite often, internally they refer to this every time an architecture/design decision needs to be taken. This could be like ‘Microservices are independent and stateless’, ‘Defining standards for all data (msg, events, API) payloads’, ‘Data Quality validated at the source’, etc.

Post defining the principles, start with the topology of the system based on the grand vision and mission of the product/application to be built. This will take into account all core internal components, as well as all external systems/endpoints to interface with.


> _Architecture principles to technology is what vision means to the product/firm. [...] Post defining the principles, start with the topology of the system based on the grand vision and mission of the product/application to be built._

## About the authors

__[Alessio Basso](https://www.linkedin.com/in/alessiobasso):__ Alessio is a Solution Architect working for a small startup within a big corporation, where he use technology to deliver products that are scalable and evolvable. His specialties are simplifying and optimizing complex information systems. He is based out of Hong Kong.

__[Baranitharan Venkatakrishnan](http://www.linkedin.com/in/baranitharan-v)__: Barney is Enterprise Architect working with multiple clients in transforming and realizing their business capabilities to products, platforms and solutions. At heart he is a Data Engineer evolved into an Architect specialized in Data & Cloud. Barney is based out of US and he support clients around the world.

---

This post have been reposted on LinkedIn: https://www.linkedin.com/pulse/minimal-viable-architecture-intersection-between-enterprise-basso/