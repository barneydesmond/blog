---
title: RRD cheatsheet
vim: linebreak
tags: Tech Linux Sysadmin
---

This summarises a bunch of stuff from the [RRD tutorial](http://oss.oetiker.ch/rrdtool/tut/rrdtutorial.en.html).

## Data collection and storage in RRD

* DS = Data Source
    * Has a name, type (counter, gauge, etc), heartbeat until considered unknown, mix, max
* RRA = Round Robin Archive, an averaged timeline in the RRD; usually we keep 3-4 different RRAs for a given data source, with decreasing granularity and increasing retention
* CF = Consolidation Function (for a given step)
    * Can be AVERAGE, MIN, MAX, LAST
    * xff = number of primary unknowns allowed per step before making the step Unknown
    * steps = how many Primary DPs to form a Consolidated DP
    * rows = number of generations of data to keep in an RRA

An example for sampling and consolidation: commonly you keep 24hrs of 5min samples, with 5min granularity. So that's a 5min step, 1 primary DP per consolidated DP, kept for 288 gens 5min * 288 gens = 1440min per day).

Another RRA for a whole week would use the same DS, which means the same 5min sampling. 30min granularity would be 6 PDPs to make 1 CDP, probably using the AVERAGE consolidation function. Keep it for 336 generations (30min * 336 gens = 10080min per week).

Here's a more realistic [example in the tutorial](http://oss.oetiker.ch/rrdtool/tut/rrdtutorial.en.html#IA_Real_World_Example).


## Data extraction and graphing

* DEF = Definition, extracts an RRA from an RRD file, eg. `DEF myspeed = foo.rrd:speed:AVERAGE`
* CDEF = Calculated DEF, apply a transform to a DEF, eg. `CDEF myspeedKMH = myspeed,3.6,*`
