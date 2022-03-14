#!/usr/bin/env bash

set -euf -o pipefail


DOWNLOAD_URL="https://github.com/jetstack/cert-manager/releases/download"
DOWNLOAD_VERSION="v1.7.1"
DOWNLOAD_DIRECTORY="$DOWNLOAD_VERSION"

mkdir -p $DOWNLOAD_DIRECTORY
curl -Ls "$DOWNLOAD_URL/$DOWNLOAD_VERSION/cert-manager.yaml" -o $DOWNLOAD_DIRECTORY/cert-manager.yaml
curl -Ls "$DOWNLOAD_URL/$DOWNLOAD_VERSION/cert-manager.crds.yaml" -o $DOWNLOAD_DIRECTORY/crd.yaml
