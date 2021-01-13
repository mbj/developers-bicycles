#!/bin/sh
exec pandoc                   \
  -t revealjs                 \
  -s                          \
  -o index.html               \
  -V revealjs-url=./reveal.js \
  -V theme=solarized          \
  README.md
