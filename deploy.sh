#!/bin/bash
git clone https://github.com/Artemmkin/reddit.git
cd reddit
gem install bundler
bundler install
puma -d
exit 0
