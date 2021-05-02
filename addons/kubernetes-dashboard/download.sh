#!/usr/bin/env bash

set -euf -o pipefail


DOWNLOAD_URL="https://api.github.com/repos/kubernetes/dashboard/tarball"
DOWNLOAD_VERSION="v2.2.0"
DOWNLOAD_DIRECTORY="$DOWNLOAD_VERSION"

curl -Ls "$DOWNLOAD_URL/$DOWNLOAD_VERSION" -o kubernetes-dashboard-$DOWNLOAD_VERSION.tar.gz
mkdir -p $DOWNLOAD_DIRECTORY
tar -xzf kubernetes-dashboard-$DOWNLOAD_VERSION.tar.gz --include "**/aio/deploy/alternative" --directory $DOWNLOAD_DIRECTORY --strip-components 4
rm -f kubernetes-dashboard-$DOWNLOAD_VERSION.tar.gz
