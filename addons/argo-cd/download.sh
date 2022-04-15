#!/usr/bin/env bash

set -euf -o pipefail


DOWNLOAD_URL="https://api.github.com/repos/argoproj/argo-cd/tarball"
DOWNLOAD_VERSION="v2.3.3"
DOWNLOAD_DIRECTORY="$DOWNLOAD_VERSION"

curl -Ls "$DOWNLOAD_URL/$DOWNLOAD_VERSION" -o argo-cd-$DOWNLOAD_VERSION.tar.gz
mkdir -p $DOWNLOAD_DIRECTORY
tar -xzf argo-cd-$DOWNLOAD_VERSION.tar.gz --include "**/manifests" --directory $DOWNLOAD_DIRECTORY --strip-components 2
rm -f argo-cd-$DOWNLOAD_VERSION.tar.gz
