#!/usr/bin/env bash

set -eu -o pipefail


DOWNLOAD_URL="https://api.github.com/repos/elastic/beats/tarball"
DOWNLOAD_VERSION="v7.13.2"
DOWNLOAD_DIRECTORY="$DOWNLOAD_VERSION"

curl -Ls "$DOWNLOAD_URL/$DOWNLOAD_VERSION" -o beats-$DOWNLOAD_VERSION.tar.gz
mkdir -p $DOWNLOAD_DIRECTORY
tar -xzf beats-$DOWNLOAD_VERSION.tar.gz --include "elastic-beats-*/deploy/kubernetes/filebeat/*" --directory $DOWNLOAD_DIRECTORY --strip-components 4
rm -f beats-$DOWNLOAD_VERSION.tar.gz
sed -e '/namespace: kube-system/d' -i '' $DOWNLOAD_DIRECTORY/*
