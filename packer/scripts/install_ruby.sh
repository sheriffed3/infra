#!/bin/bash

gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3
curl -sSL https://get.rvm.io | bash -s stable
source ~/.rvm/scripts/rvm
rvm requirements
rvm install 2.4.1
echo 'Ruby Version' > result
ruby -v >> result
echo 'Gem Version Bundler' >> result
gem -v bundler >> result
cat result

rm result
/bin/bash --login
exit 0
