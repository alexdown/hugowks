+++
draft = true
title = "Latency vs. Response time"
date = 2014-09-12T03:56:00Z
+++

<a name="aIntro"></a>
I was recently dragged into a call about application performances test, where people were discussing numbers and results trying to explain them in layman's terms.

However, I found that is useful to establish an unambiguous and common vocabulary between all parties involved. Here are some thoughts on the matter.

<a name="aResponsetime"></a>
**Response time** - When discussing the _response time_ of the system, people often refers to it as _latency_. Response time is instead the amount of time a system takes to react to a request once it has received one. For istance, the time between the instant we invoke an API and the instant this API returns the result of its computation, that's the response time.

<a name="aLatency"></a>
**Latency** - Latency is sometimes - but not correctly - referred to as the "response time" of a given _remote_ API (e.g. a webservice). When invoking a remote API, the total response time is the sum of the response time proper (the time needed by the system to compute a result) and the time your request (and their response) takes to travel over the network between client and server. The latter is the _latency_ proper.

<a name="aDelay"></a>
If we consider the above definitions, when a backend system is being mocked to run performance tests in isolation, the _response time_ of that particular backend is set to zero. If we artificially modify the mock code so that it takes a time > 0 to return the mocked result, it's a _delay_ we're adding and not - as it is sometimes referred to - a _latency_.

<a name="aProfile"></a>
**Profiling** - The first step of application performance analysis is profiling. It typically refers to monitoring the program execution, see if it makes the expected API calls, no more no less, and how much time these calls take. If there are steps that takes a suspiciously long time to execute, those are broken down to their constituent parts and analysed further to find the bottleneck.

<a name="aLoadTest"></a>
**Load test** - This is generally referred as generating a realistic load (i.e. a realistic number of concurrent threads accessing the application performing different tasks) to see if it can handle it. 

<a name="aStressTest"></a>
**Stress test** - This is different from the _load test_ in the sense that it loads the application out of the normal functioning parameters, for instance by:

- using more concurrent users than expected
- executing a sequence of tasks which is not part of the normal usage pattern of the app (e.g. repeat the same task many times in sequence). 

Also, an important factor to verify is if the application can recover automatically from a situation of stress, going back to normal functioning when the load decreases.

<a name="aEnduranceTest"></a>
**Endurance test** - Refers to the practice of running a load test for an extended period of time (usually 24h or more). Ensures there is no degradation of application performances due to bad management of resources (e.g. non released connections, memory leaks, etc). 

Looking forward for your comments, suggestions, corrections, real-life experiences... ;)
