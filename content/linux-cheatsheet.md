+++
title = "Linux Cheatsheet"
slug = "linux-cheatsheet"
date = 2022-09-28
draft = true

[taxonomies]
tags = ["linux","cheatsheet","living"]
+++

Living document of personal Linux cli commands cheat sheet.

As I discover more I will add for repetition's sake.

When in doubt, `man <command>`.

<!-- more -->

## `ss`

> `ss` - another utility to investigate sockets (replacement for `netstat`)
>
> <https://man7.org/linux/man-pages/man8/ss.8.html>

```fish
# show listening (-l), TCP (-t) sockets
$ ss -lt
```

## `lsof`

> `lsof` - list open files

```fish
# show internet (-t) applications listening on a certain port (:<port>)
$ lsof -i :23
```

---

## Misc. one liners

```fish
# find all open ports
cat /etc/services | grep port
```
