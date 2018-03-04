#!/bin/sh

set -ex

mkdir "$HOME/workspace"

git config --global user.email ankeesler1@gmail.com
git config --global user.name "Andrew Keesler"
git config --global push.default simple

git clone https://github.com/fatih/vim-go.git ~/.vim/pack/plugins/start/vim-go

go get -t github.com/ankeesler/anwork/cmd/anwork
go install github.com/onsi/ginkgo/ginkgo

