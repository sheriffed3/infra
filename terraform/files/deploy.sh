#!/bin/bash
set -e

source ~/.profile
git clone https://github.com/Artemmkin/reddit.git
cd reddit
gem install bundler
bundle install

sudo mv /tmp/puma.service /etc/systemd/system/puma.service
sudo systemctl start puma
sudo systemctl enable puma
