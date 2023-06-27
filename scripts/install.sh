#!/usr/bin/env sh

git clone https://github.com/getzola/zola.git
cd zola || exit
git checkout v0.17.2
cargo install --path .
zola --version
cd .. || exit
