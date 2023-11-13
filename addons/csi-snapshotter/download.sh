#!/usr/bin/env bash

set -euf -o pipefail

DOWNLOAD_VERSION="v6.3.2"
DOWNLOAD_DIRECTORY="$DOWNLOAD_VERSION"

curl -Ls "https://github.com/kubernetes-csi/external-snapshotter/archive/refs/tags/$DOWNLOAD_VERSION.tar.gz" -o $DOWNLOAD_DIRECTORY.tar.gz
mkdir -p $DOWNLOAD_DIRECTORY
tar -xzf $DOWNLOAD_VERSION.tar.gz --include "**/deploy/kubernetes/snapshot-controller" --include "**/client/config/crd" --directory $DOWNLOAD_DIRECTORY --strip-components 3
rm -f $DOWNLOAD_VERSION.tar.gz
