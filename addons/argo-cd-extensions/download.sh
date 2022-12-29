#!/usr/bin/env bash

set -euf -o pipefail


DOWNLOAD_URL="https://api.github.com/repos/argoproj-labs/argocd-extensions/tarball"
DOWNLOAD_VERSION="v0.2.1"
DOWNLOAD_DIRECTORY="$DOWNLOAD_VERSION"

curl -Ls "$DOWNLOAD_URL/$DOWNLOAD_VERSION" -o $DOWNLOAD_VERSION.tar.gz
mkdir -p $DOWNLOAD_DIRECTORY
tar -xzf $DOWNLOAD_VERSION.tar.gz --include "**/manifests" --exclude "**/manifests/namespace-install" --directory $DOWNLOAD_DIRECTORY --strip-components 2
rm -f $DOWNLOAD_VERSION.tar.gz
