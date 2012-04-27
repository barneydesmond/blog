---
layout: post
title: On top of the world
vim: linebreak
---

{% include post_header.html %}

We've been messing with a customer at work recently, they have this dopey-arse habit of running many instances of the `top` command on their server. It's not like it's a problem, but they call us up and think the sky is falling when they really don't know what they're doing.

A few of us decided to do something about it late one evening last week. Using nagios to monitor the number of running `top` processes on their machine, we set it to trip a Critical alert if it exceeds 5. When a Critical occurs it invokes a script that kills the oldest instance with a "run out of CPU time" error, and pops a messag in syslog for us.

It looks like we hit paydirt this week:
<small>
        Apr 26 16:09:13 SERVERNAME top-ng: top has exceeded (6) the maximum number of allowed instances, please contact Anchor to purchase additional entitlements
        Apr 26 16:10:03 SERVERNAME top-ng: top has exceeded (6) the maximum number of allowed instances, please contact Anchor to purchase additional entitlements
        Apr 26 18:02:09 SERVERNAME top-ng: top has exceeded (6) the maximum number of allowed instances, please contact Anchor to purchase additional entitlements
        Apr 27 09:20:11 SERVERNAME top-ng: top has exceeded (6) the maximum number of allowed instances, please contact Anchor to purchase additional entitlements
        Apr 27 10:50:50 SERVERNAME top-ng: top has exceeded (6) the maximum number of allowed instances, please contact Anchor to purchase additional entitlements
        Apr 27 14:43:03 SERVERNAME top-ng: top has exceeded (6) the maximum number of allowed instances, please contact Anchor to purchase additional entitlements
</small>

We get pretty graphs too!
{% insert_image nagios_tops_graph.png %}
Caption: The customer's `top`s don't stand a chance.
