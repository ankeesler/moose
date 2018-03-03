#!/bin/sh

set -ex

mkdir "$HOME/workspace"

git config --global user.email ankeesler1@gmail.com
git config --global user.name "Andrew Keesler"
git config --global push.default simple

go get -t github.com/ankeesler/anwork/cmd/anwork
go install github.com/onsi/ginkgo/ginkgo
