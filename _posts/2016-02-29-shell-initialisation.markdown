---
title: Shell initialisation
vim: linebreak
tags: Tech
---

Shells are a nuisance. Which files even get loaded? It depends on the context
in which you get a shell.

These are all files in your homedir, I'm ignoring systemwide files.

| Context        | Interactive?          | rc files loaded |
|----------------------------------------------------------|
| SFTP           | Non-interactive shell | `.bashrc` |
| SSH            | Interactive shell     | `.bash_profile` then `.bashrc` |
| Screen session | Interactive           | `.bashrc` |
| Local shell    | Interactive           | `.bashrc` |

Interactivity is important because printing output on a non-interactive shell
will probably lead to unobvious breakage. For example, printing your mailbox
status on an SFTP connection will result in mysterious failures after
connecting and authenticating successfully.
