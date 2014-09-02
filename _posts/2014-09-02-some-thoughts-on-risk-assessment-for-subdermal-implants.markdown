---
title: Some thoughts on risk assessment for subdermal implants
vim: linebreak
---

A friend asked me for my thoughts on getting an implanted RFID tag. My overall thoughts are best summed up as "cautious optimism". I wish I lived in a Deus Ex world as much as the next technophile, but I know that reality isn't so simple. What we see there is the end product of a whole lot of *society* happening, with not that much context of how they got there.

I certainly don't have any idea how they got there, and haven't personally given it much thought, but I think it deserves a somewhat more reasoned answer than "sort of" or "maybe". Thus, here is something of a dump from my brain.

The question posed, with some slight rewording:

> *What are your thoughts on RFID/NFC implants? Various people around me are either iffy, or think I'm completely daft. Some people are more practically concerned about things like obsolescence of the electronics, and safety of the materials used. I think it would be cool to have, and useful in little ways.*

I personally like the idea, but I don't see enough need or uses for it yet. This isn't a new thing, body modders have been thinking about this sort of thing for a while, and as far as I can see it hasn't taken off. I think we'll get there, but it'll take a long time, and we're going to learn some things the hard way. Maybe a lawsuit or two over botched implants, or cases of users getting stuck with quickly-obsolete hardware (eg. HD-DVD losing to Bluray).

The people around you all have valid points, mostly differences in perspective. So I'd say it comes down to an ideological and risk assessment call. You mentioned that someone said that it's your body, so it's your choice. That's correct, but that means you really want to be making an informed decision.


## About implants

You want to know aaallll about how implants work, how they've done (ie. implanted/delivered), how long they last, what the typical rejection rates are for particular hardware and their implant sites (quantitative results specifically, not just qualitative stuff like "a vast majority of users suffer no problems at all and heal completely"), all that sorta stuff.

You want to talk to people who've been there before and done that. On the strictly medical side of things, talk to doctors and find out about stuff like [Implanon](http://en.wikipedia.org/wiki/Nexplanon). Those are real, long-term subdermal implants and the standards demanded of them are pretty high.

On the flipside, the body-mod community is also likely all over this sorta thing. They'll tend to do more aggressive stuff so they probably have a good idea of how the body responds when you push it a long way (eg. [transdermal piercings](http://en.wikipedia.org/wiki/Transdermal_implant)), which can give you a better idea of worst-case results.


## What the chips can do

And that's just for getting *anything* implanted. Then there's the considerations for what it'll actually do in terms of functionality. Ideally you'd load as much onto it as possible, because the value of having something tightly integrated with yourself is in centralising stuff. But say if you got a proxcard for the place you just started working, you may or may not be able to clone that function into the implant. If you can, can multiple cards coexist at the same time? Can you, or how do you, switch "personalities" if you want to open a door vs. give someone your vcard details?

Something I'd really like, that may or may not be even possible, is an implanted [smartcard](http://en.wikipedia.org/wiki/Smart_card). I'm not actually sure if there's a difference in the physical (ie. radio/air) interface level, but the behaviour is definitely different between "dumb" chips that squawk their identity number, typically used for building and door access controls, and smart chips with an embedded CPU that can perform crypto functions to authorise transactions and the like.

Even if you get an implanted one of those, it's highly unlikely that the bank will let you use it like Paypass (because it's not their hardware, and thus well outside their risk management envelope). Ditto for stuff like [Opal](http://en.wikipedia.org/wiki/Opal_card) and [Suica](http://en.wikipedia.org/wiki/Suica) functionality, though in theory the latter is slightly more plausible, because Suica has mobile apps for [suitably equipped phones](http://en.wikipedia.org/wiki/Mobile_Suica).


## Thoughts on security

So okay, let's say that you can live with those limitations, then you *really* want to find compelling uses for yourself. It's arguably unfortunate that you're not being threatened by an enemy state, so the extra security potentially granted by an implant is fairly minimal, making it difficult to justify, but the convenience is admittedly quite cool.

At this point, I'd really recommend reading some of Bruce Schneier's stuff. He's written a bunch of [books](http://en.wikipedia.org/wiki/Bruce_Schneier#Publications) and also has a [blog](https://www.schneier.com/blog/calendar.html) but the homepage isn't working right now.

*N.B. My memory is not the best here, and I haven't touched this stuff in a long while. But I think I've mostly got it right.*

On the flipside, there are security considerations to be made for use of an implanted device (let's call it a "key"). You need to perform risk analysis, which is basically:

1. What are the Threats (often measureed in dollars) that I'm facing?
2. What is the Likelihood that each threat will eventuate (as a percentage)?
3. Multiply those together to determine your Risk
4. Rank the risks and decide how you'll deal with each one

In business, your options for dealing with risks are:

1. Accept: Shit happens and you'll wear the costs
2. Mitigate: Spend money to reduce the likelihood to acceptable/manageable levels
3. Transfer: Pay someone else to handle the risk, make it their problem, most common in business
4. Avoid: Don't participate in activities that'll expose you to the threat


### Practice risk assessment

Lets do a really basic assessment of just having your door key implanted in you. The specifics don't really matter, you could even assume that it's like a ring that you can't take off, for something more palatable and accessible to an ordinary person. On the upside, you will never ever lose or forget your keys again, and let's assume that the lock always works.

Threats:

* People want to rob you - $5,000
* The lock may not work if the power fails - $100 for a locksmith callout?
* You can't lend the key to a friend/relative - $unknown
* Making duplicates of the key is now more expensive - $50 per key?
* While classic pin-tumbler lockpicking is now impossible, there may be other vulnerabilities (electronic lockpicking, as it were) $unknown, assume similar to robbery
* It may or may not be possible to change the key if the need arises - $unknown
* Someone who really wants to steal your key may now kidnap you instead of rolling you for your wallet in a dark alley - $50,000 hand-wavey guess

Let's assess risk over... incidences over 10 years. What's the chance there'll be a single incident in a 10 year span?

* 1 robbery
* 2 locksmith callouts
* 5 needs to lend a key to someone
* 5 duplicate keys needed
* 0.5 sophisticated lockpick attacks
* Ignore key changing
* 0.001 kidnappings

(this is a lot of hand waving)

Expected cost of assessed risks, ordered by cost:

* Robbery: $5,000
* Sophisticated electronic robbery: $2,500
* Extra keys: $250
* Locksmiths callouts: $200
* Kidnapping: $50

We don't have a costing for key-lending, so ignore it for now. Actually, robbery here doesn't have anything to do with the electronic lock or plain old lock. Oops! Let's leave it in anyway.

Okay, so we're still roughly equally worried about robbery, we've exposed ourself to a more sophisticated electronic lock bypass, and we might expect to spend several hundred bucks for the privilege of having a fancy lock.

A quick rundown of risk management strategies:

* Robbery: Mitigate with bars on windows, more secure locks (whatever that means), alarm system. Transfer with home and contents insurance (how much does that cost? per-year for 10 years, vs. $5000?)
* Sophisticated electronic robbery: Same as above, but more limited scope
* Extra keys: Have to accept or avoid
* Locksmiths callouts: Have to accept or avoid
* Kidnapping: Have to accept or avoid

This is not necessarily a *meaningful* exercise because the dollar values and threat assesment are all wrong and I thought it up in 5min, but it's good to practise this way of thinking.
