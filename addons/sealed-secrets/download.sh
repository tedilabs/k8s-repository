#!/usr/bin/env bash

set -euf -o pipefail


DOWNLOAD_VERSION="v0.17.5"
DOWNLOAD_URL="https://github.com/bitnami-labs/sealed-secrets/releases/download/${DOWNLOAD_VERSION}/controller.yaml"
DOWNLOAD_DIRECTORY="$DOWNLOAD_VERSION"

mkdir -p $DOWNLOAD_DIRECTORY
curl -Ls "$DOWNLOAD_URL" -o $DOWNLOAD_DIRECTORY/controller.yaml
