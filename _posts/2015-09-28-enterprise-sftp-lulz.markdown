---
title: Enterprise SFTP lulz
vim: linebreak
tags: Tech
---

In case you've been living under a rock, you'll have heard of the SAP, the huge business management software solution used by lots of multinational corporations worldwide. SAP is painfully *Enterprise*.

I've had the faintest brush with SAP at my new job so far, but for some Really Expensive software, the docs are kinda shite. Have a look at this gem: it's the intro paragraph from the setup guide for a plugin that's an SFTP client (Secure File Transfer Protocol), so you can push your files to a remote server:

> Consider a business scenario where a 3rd party application hosts a SFTP
> Server communicates to external world via files. Your landscapes has SAP PI
> as middleware for communication between different systems.

I COMMUNICATE VIA FILES!!! Oh FFS... I don't want to stereotype, but this sounds like Chinglish. It's actually easier to figure out what you're doing by looking at the commands they tell you to run, rather than reading the rest of the PDF.

It turns out that you:

1. Generate a self-signed SSL certificate on the SAP server that will be the SFTP client.
2. Extract the public key from the certificate.\\
   (`openssl x509 -pubkey -noout -in foo.example.com_crt foo.example.com_pem.pub`)
3. Convert the public key from PKCS8 format to SSH format.\\
   (`ssh-keygen -i -m PKCS8 -i foo.example.com_pem.pub`)
4. Put the ssh pubkey wherever you want (probably on an SSH server somewhere).

It wouldn't have killed them to generate an SSH key straight off the bat, but whatever...
