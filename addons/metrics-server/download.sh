#!/usr/bin/env bash

set -euf -o pipefail


DOWNLOAD_URL="https://github.com/kubernetes-sigs/metrics-server/releases/download/v0.4.2/components.yaml"
DOWNLOAD_VERSION="v0.4.2"
DOWNLOAD_DIRECTORY="$DOWNLOAD_VERSION"

mkdir -p $DOWNLOAD_DIRECTORY
curl -Ls "$DOWNLOAD_URL" -o $DOWNLOAD_DIRECTORY/components.yaml
