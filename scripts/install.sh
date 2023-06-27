#!/usr/bin/env sh

amazon-linux-extras install rust1

git clone https://github.com/getzola/zola.git
cd zola || exit
git checkout v0.17.2
cargo install --path .
zola --version
cd .. || exit
