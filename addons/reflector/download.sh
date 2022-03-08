#!/usr/bin/env bash

set -euf -o pipefail


DOWNLOAD_URL="https://github.com/emberstack/kubernetes-reflector/releases/download"
DOWNLOAD_VERSION="v6.1.23"
DOWNLOAD_DIRECTORY="$DOWNLOAD_VERSION"

mkdir -p $DOWNLOAD_DIRECTORY
curl -Ls "$DOWNLOAD_URL/$DOWNLOAD_VERSION/reflector.yaml" -o $DOWNLOAD_DIRECTORY/reflector.yaml
