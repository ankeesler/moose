#!/bin/sh

set -ex

mkdir install-out
cd install-out

install() {
  sudo apt install -y -q -V "$1" 1>"$1.stdout.log" 2>"$1.stdout.log"
}

sudo apt-get update 1>update.stdout.log 2>update.stderr.log

install golang
install git
install tmux

sudo apt-get autoremove 1>autoremove.stdout.log 2>autoremove.stderr.log

cat >> ~/.profile <<- EOM

# From install.sh...
export GOPATH="\$HOME/workspace/go"
export PATH="\$PATH:\$GOPATH/bin"
export PATH="\$PATH:/usr/lib/go-1.7/bin"
EOM

cd ..
