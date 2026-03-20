#!/usr/bin/env fish

set today (date "+%Y-%m-%d")

gum style --foreground 212 --bold "Creating a new post..."

set title (gum input --prompt "> Title: ")
set tags (gum input --prompt "> Tags (comma-separated): ")

if test -z "$title"
    set title "Blogpost: $today"
end

set slug (string lower $title | string replace -a " " "-")

set tag_items ""
for t in (string split "," $tags)
    set t (string trim $t)
    if test -n "$t"
        set tag_items "$tag_items\"$t\","
    end
end
set tag_items (string trim -r -c "," $tag_items)
set tag_json "[$tag_items]"

set encoded_title (string escape --style=url $title)

set filepath "./content/$today.md"

if not gum confirm "Create branch '$today'?"
    gum style --foreground 1 "Aborted."
    exit 1
end

git checkout -b $today

if test -e $filepath
    if not gum confirm "File exists. Overwrite?"
        gum style --foreground 1 "Aborted."
        exit 1
    end
end

cat >$filepath < < EOF
+++
title = "$title"
slug = "$slug"
date = $today
draft = true

[taxonomies]
tags = $tag_json

[extra]
meta = [
{ property = "og:image", content = "https://og.razzle.cloud/og?title=$encoded_title" } ,
]
+++

> **TL DR**

< !-- more -- >
## first section
EOF

gum style --foreground 10 --bold "✔ Post created: $filepath"
