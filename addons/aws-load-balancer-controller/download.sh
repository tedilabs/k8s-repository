#!/usr/bin/env bash

set -euf -o pipefail


DOWNLOAD_URL="https://github.com/kubernetes-sigs/aws-load-balancer-controller/releases/download"
DOWNLOAD_VERSION="v2.4.5"
DOWNLOAD_DIRECTORY="$DOWNLOAD_VERSION"

mkdir -p $DOWNLOAD_DIRECTORY
curl -Ls "$DOWNLOAD_URL/${DOWNLOAD_VERSION}/${DOWNLOAD_VERSION//./_}_full.yaml" -o $DOWNLOAD_DIRECTORY/install.yaml
