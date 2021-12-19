#!/usr/bin/env bash

set -euf -o pipefail


DOWNLOAD_URL="https://raw.githubusercontent.com/kubernetes-sigs/aws-alb-ingress-controller/main/docs/install"
DOWNLOAD_VERSION="v2.2.3"
DOWNLOAD_DIRECTORY="$DOWNLOAD_VERSION"

mkdir -p $DOWNLOAD_DIRECTORY
curl -Ls "$DOWNLOAD_URL/${DOWNLOAD_VERSION//./_}_full.yaml" -o $DOWNLOAD_DIRECTORY/install.yaml
