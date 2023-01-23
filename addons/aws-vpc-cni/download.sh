#!/usr/bin/env bash

set -euf -o pipefail


DOWNLOAD_URL="https://api.github.com/repos/aws/amazon-vpc-cni-k8s/tarball"
DOWNLOAD_VERSION="v1.12.1"
DOWNLOAD_DIRECTORY="$DOWNLOAD_VERSION"

curl -Ls "$DOWNLOAD_URL/$DOWNLOAD_VERSION" -o $DOWNLOAD_VERSION.tar.gz
mkdir -p $DOWNLOAD_DIRECTORY
tar -xzf $DOWNLOAD_VERSION.tar.gz --include "**/config/master" --directory $DOWNLOAD_DIRECTORY --strip-components 3
rm -f $DOWNLOAD_VERSION.tar.gz
