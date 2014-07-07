---
layout: post
title: Pains with Typekit and Lightroom
vim: linebreak
tags: Photography
---

{% include post_header.html %}

I thought I was going mad, it turns out that I'm not.

I have a Creative Cloud subscription, I can get beautiful fonts to use on my desktop. Great! I thought about redoing my photography watermark because while I like Calibri, it's not terribly interesting. I picked some fonts from Typekit, went to use them in Lightroom, and... they're not there? They appear in Photoshop just fine.

I went to increasingly greater lengths to "steal" the files and install them into the system but to no avail. They're [tucked away on the system](http://dylanvalade.com/post/74649521957/how-to-find-synced-typekit-fonts-on-your-computer) but can be found and copied out. So I tried that, and they look like arse in Lightroom in the watermark editor. What gives?

I figured they might've poisoned the files in some way so I went to grab the `data:base64` URIs from the embedded fonts, but that was also no good, after jumping through many decoding and conversion hoops.

Well, it turns out that... [Lightroom can't use OTF fonts](http://feedback.photoshop.com/photoshop_family/topics/lightroom_watermark_editor_font_issues) at all. In my case I'd sorta jammed them in there, so they appeared in the list, but actual usage is futile. Something to do with low level Windows font handling routines. :( Lightroom can use Truetype fonts without issue, but the stuff that Typekit supplies is all OpenType, so it's hopeless.

In the meantime my solution is to make some really high-res transparent PNGs with my type, and using those as graphical watermarks. It's janky, but it seems to work fine.
