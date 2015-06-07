---
title: Importing a CA cert in Linux
vim: linebreak
tags: Tech Linux Sysadmin
---

An annoyance that I had thoughts about recently; some notes.

I thought there was a sorta-proper way to do this, but I'm not sure now.

Firefox is easy, but not integrated with the system (I think):

1. Edit menu, Preferences
1. Advanced tab
1. Encryption sub-tab
1. View Certificates
1. Authorities tab
1. Import...
1. Load up your PEM file with the CA's cert
1. That's it, you've added a new trust root


Chrome seems to use the system certs, and this guide (at the end) seems to sound like the way to go:
http://blog.sandipb.net/2009/08/08/adding-new-ca-certificates-in-ubuntu-jaunty/

Drop it in `/usr/local/share/ca-certificates/`, and `update-ca-certificates`, but Chrome doesn't seem to trust it. Not sure why... I guess it's fair that trust isn't a binary thing (ie. you have the CA cert in the store, or not).

So I found this:
http://code.google.com/p/chromium/wiki/LinuxCertManagement

*sigh* At least their justification seems reasonable.

The trick is figuring out what your Trust Flags should be. Actually Chrome has a basic cert manager with the three tickboxes (servers/email/code) for types-of-usage that Firefox has, and that affects the output of `certutil -L`. So I guess that's an easier way to do it.
