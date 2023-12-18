#! /usr/bin/env zx

const c = chalk;

const today = new Date().toISOString().slice(0, 10);

echo`Creating a new post...`;

function newPostTmpl(title, tags = []) {
  if (!title) {
    title = "Blogpost: " + today;
  }

  const slug = title.toLowerCase().replaceAll(" ", "-");

  return `+++
title = "${title}"
slug = "${slug}"
date = ${today}
draft = true

[taxonomies]
tags = ${JSON.stringify(tags, null, 0)}

[extra]
meta = [
    {property = "og:image", content = "https://og.razzle.cloud/og?title=${encodeURI(title)}"},
]
+++

> **TL;DR**

<!-- more -->

## first section
`;
}

const title = await question(c.blue("> Title: "));
const tags = await question(c.blue("> Tags: "));

await $`git checkout -b ${today}`;

const boilerPlate = newPostTmpl(title, tags.split(","));

await $`echo ${boilerPlate} >> ./content/${today}.md`;
