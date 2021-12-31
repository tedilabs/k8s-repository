#!/usr/bin/env bash

set -euf -o pipefail


DOWNLOAD_URL="https://api.github.com/repos/external-secrets/kubernetes-external-secrets/tarball"
DOWNLOAD_VERSION="8.5.0"
DOWNLOAD_DIRECTORY="$DOWNLOAD_VERSION"

curl -Ls "$DOWNLOAD_URL/$DOWNLOAD_VERSION" -o $DOWNLOAD_VERSION.tar.gz
mkdir -p $DOWNLOAD_DIRECTORY
tar -xzf $DOWNLOAD_VERSION.tar.gz --include "**/charts/kubernetes-external-secrets" --directory $DOWNLOAD_DIRECTORY --strip-components 3
rm -f $DOWNLOAD_VERSION.tar.gz
