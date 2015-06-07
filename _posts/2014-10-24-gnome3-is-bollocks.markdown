---
title: GNOME3 is bollocks
vim: linebreak
tags: Tech
---

Why does Gnome (GNOME3 specifically) make things so hard? All I want to do is bind a keystroke to lock my workstation.

I got a shiny new laptop at work, huzzah! Locking the screen used to be as simple as calling `xscreensaver-command --lock`, but we don't use xscreensaver any more.

Nowadays we [need to make a dbus call](http://unix.stackexchange.com/questions/107787/how-can-i-trigger-the-screensavers-locking-feature-using-d-bus-from-the-command), eugh.

Using the *Keyboard* control panel, I bound Ctrl-Alt-L to this command:

```
dbus-send  \
    --type=method_call  \
    --dest=org.gnome.ScreenSaver  \
    /org/gnome/ScreenSaver  org.gnome.ScreenSaver.Lock
```

This is only necessary because the laptop keyboard (Lenovo T440) doesn't have enough spare media keys for me to appropriate, and I kinda need to be able to lock the screen without an external keyboard attached.

Of course this would've been much simpler if Gnome let you bind multiple keystrokes to the same damned action!
