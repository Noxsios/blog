+++
title = "Brewfile"
slug = "brewfile"
date = 2022-09-28
draft = false

[taxonomies]
tags = ["brew","brewfile","rice"]
+++

My current Brewfile explained.  Some entries (like `gcc`) are omitted because they are self explanatory, 
while others (like `helm`) are omitted because they are much more commonly known.  This leaves, lesser known and hopefully
helpful programs.  Enjoy!

<!-- more -->

For all my tools I like using the `macchiato` color scheme from [catpuccin](https://github.com/catppuccin)

<details>
  <summary>
    <code>brew bundle dump && cat Brewfile</code>
  </summary>

```text
tap "defenseunicorns/tap"
tap "homebrew/bundle"
tap "homebrew/cask"
tap "homebrew/cask-fonts"
tap "homebrew/core"
brew "bat"
brew "bottom"
brew "exa"
brew "fd"
brew "fish"
brew "gcc"
brew "gnupg"
brew "go"
brew "helm"
brew "jq"
brew "k3d"
brew "k9s"
brew "kind"
brew "kubernetes-cli"
brew "mdbook"
brew "nano"
brew "neofetch"
brew "neovim"
brew "python@3.9"
brew "ranger"
brew "ripgrep"
brew "sops"
brew "starship"
brew "tree"
brew "vale"
brew "volta"
brew "yq"
brew "zola"
brew "defenseunicorns/tap/zarf"
cask "1password"
cask "appgate-sdp-client"
cask "brave-browser"
cask "discord"
cask "firefox"
cask "font-hack-nerd-font"
cask "gimp"
cask "iglance"
cask "iterm2"
cask "protonmail-bridge"
cask "rectangle"
cask "signal"
cask "slack"
cask "typora"
cask "visual-studio-code"
cask "zoom"
```
  
</details>

## `bat`

A cat(1) clone w/ auto syntax highlighting, integrated pagination, git integration, etc...

<https://github.com/sharkdp/bat>

To mimic pure cat, use `bat -pp <path>`

## `bottom`

A better `top`, I use on a small 10 inch monitor for constant system usage. Super beautiful + interactive.

<https://github.com/ClementTsang/bottom>

## `exa`

A `ls` replacement w/ better coloring.  (can run a bit slow on old machines)

<https://github.com/ogham/exa>

## `fd`

A newer + better `find`, really fast.

<https://github.com/sharkdp/fd>

## `fish`

My shell of choice, comes preloaded w/ autocomplete from shell history.

<https://github.com/fish-shell/fish-shell>

## `k9s`

Great k8s deep dive tool + overall critical tool to add to devops toolbelt.

<https://github.com/derailed/k9s>

## `mdbook`

Like gitbook, but in Rust.

<https://github.com/rust-lang/mdBook>

## `nano`/`neovim`

CLI text editors.

## `neofetch`

Display system info for showing off on `r/unixporn`

```text
~
❯ neofetch
                    'c.          razzle@defense-unicorns-macbook.local
                 ,xNMM.          -------------------------------------
               .OMMMMo           OS: macOS 12.5.1 21G83 arm64
               OMMM0,            Host: MacBookPro18,4
     .;loddo:' loolloddol;.      Kernel: 21.6.0
   cKMMMMMMMMMMNWMMMMMMMMMM0:    Uptime: 12 days, 20 hours, 15 mins
 .KMMMMMMMMMMMMMMMMMMMMMMMWd.    Packages: 89 (brew)
 XMMMMMMMMMMMMMMMMMMMMMMMX.      Shell: fish 3.5.1
;MMMMMMMMMMMMMMMMMMMMMMMM:       Resolution: 1920x1080, 1920x1080, 1920x1080
:MMMMMMMMMMMMMMMMMMMMMMMM:       DE: Aqua
.MMMMMMMMMMMMMMMMMMMMMMMMX.      WM: Rectangle
 kMMMMMMMMMMMMMMMMMMMMMMMMWd.    Terminal: iTerm2
 .XMMMMMMMMMMMMMMMMMMMMMMMMMMk   Terminal Font: HackNerdFontCompleteM-Regular 12
  .XMMMMMMMMMMMMMMMMMMMMMMMMK.   CPU: Apple M1 Max
    kMMMMMMMMMMMMMMMMMMMMMMd     GPU: Apple M1 Max
     ;KMMMMMMMWXXWMMMMMMMk.      Memory: 4339MiB / 32768MiB
       .cooc,.    .,coo:.

```

## `ranger`

CLI file explorer + file preview.

<https://github.com/ranger/ranger>

## `ripgrep`

Recursive grep that respects `.gitignore`.

<https://github.com/BurntSushi/ripgrep>

## `starship`

Best shell prompt I have found.  It even has Helm chart integration + the base git + version integrations are amazing.

<https://github.com/starship/starship>

## `volta`

A much better `nvm`/ node.js version manager.

<https://github.com/volta-cli/volta>

## `iglance`

Throw a sytem monitor in the top status bar on Mac.

<https://github.com/iglance/iGlance>

## `rectangle`

Get Windows like window pinning/snapping + a ton of useful keyboard shortcuts.

<https://github.com/rxhanson/Rectangle>

---

If you don't see an explanation for an item in my Brewfile that you would like to see, let me know and I will add it!
