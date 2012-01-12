---
layout: post
title: Moved the blog to Jekyll
---

{% include post_header.html %}

It's about bloody time I did *something*.

I stumbled upon a blog post by [TPW](http://tom.preston-werner.com/), one of the co-founders of Github. We dealt with him a fair bit while Github was a customer of Anchor, but it's only right that I'd discover all the cool stuff after the fact.  :/

Everything he wrote in *[Blogging Like a Hacker](http://tom.preston-werner.com/2008/11/17/blogging-like-a-hacker.html)* rang so utterly true for me. I like Wordpress a lot, and it's dead-easy to use, but there were always little things that annoyed me.

For example, if I wanted to post a lot of photos from my travels, and display a gallery, and be able to link full-size versions, but not embed full-size versions in the gallery, and... many other things, I couldn't see a way to do that. And I also wanted captions extracted from the EXIF data, because keeping that in more than one place is just dumb.

Jekyll doesn't fix this, but it gives me a little system that I can probably hack up to do what I want, without too much effort. I was keeping this in [Zine](http://zine.pocoo.org/) because of the Python-love, but Zine has been dormant for a while, offers no support at all for my photo problem, and would have you use a crazy markup format called ZEML. Which is a nice idea, except that the docs are basically that it's undocumented.

So you install the Markdown parser plugin for Zine instead. And here we are today using [Jekyll](https://github.com/mojombo/jekyll).

