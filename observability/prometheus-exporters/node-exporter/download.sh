#!/usr/bin/env bash

set -euf -o pipefail


DOWNLOAD_URL="https://api.github.com/repos/prometheus-operator/kube-prometheus/tarball"
DOWNLOAD_VERSION="v0.10.0"
DOWNLOAD_DIRECTORY="$DOWNLOAD_VERSION"

curl -Ls "$DOWNLOAD_URL/$DOWNLOAD_VERSION" -o $DOWNLOAD_VERSION.tar.gz
mkdir -p $DOWNLOAD_DIRECTORY
tar -xzf $DOWNLOAD_VERSION.tar.gz --include "**/manifests/nodeExporter*" --directory $DOWNLOAD_DIRECTORY --strip-components 2
rm -f $DOWNLOAD_VERSION.tar.gz
