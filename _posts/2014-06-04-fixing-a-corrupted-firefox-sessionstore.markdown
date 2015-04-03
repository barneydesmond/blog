---
title: Fixing a corrupted Firefox sessionstore.js
vim: linebreak
---

I kinda run a lot of open tabs, it's a bad habit of mine. One day firefox died hard and came back without offering the usual session restore page. Shit shit shit, I want those tabs back.

With a lot of faffing around I discovered that it has a state store, and it was corrupted. It was certainly large enough, but something funky was going on, causing it to ignore the file completely and make a new one.

Well this is shit, I can see the sessionstore.js file right there, it's just not getting used. Time for some manual JS hackery. The file was kinda big but manageable enough after pushing it to a linux box and opening it in vim.

The damned this is too messy, so I just kept truncating the last record to completion and closed all the braces and square brackets. Done! I think only a handful of tabs were lost, so that's a win.

Here's some sorta useful information, enjoy!

* http://kb.mozillazine.org/Sessionstore.js
* http://forums.mozillazine.org/viewtopic.php?p=4655235#p4655235
* https://support.mozilla.org/en-US/questions/947856
