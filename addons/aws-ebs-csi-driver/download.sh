#!/usr/bin/env bash

set -euf -o pipefail

DOWNLOAD_VERSION="v1.14.0"
DOWNLOAD_DIRECTORY="$DOWNLOAD_VERSION"

curl -Ls "https://github.com/kubernetes-sigs/aws-ebs-csi-driver/archive/refs/tags/$DOWNLOAD_VERSION.tar.gz" -o $DOWNLOAD_DIRECTORY.tar.gz
mkdir -p $DOWNLOAD_DIRECTORY
tar -xzf $DOWNLOAD_VERSION.tar.gz --include "**/deploy/kubernetes" --directory $DOWNLOAD_DIRECTORY --strip-components 3
rm -f argo-$DOWNLOAD_VERSION.tar.gz
