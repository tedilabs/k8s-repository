#!/usr/bin/env bash

set -euf -o pipefail


DOWNLOAD_VERSION="2020-10-29"
DOWNLOAD_URL="https://s3.us-west-2.amazonaws.com/amazon-eks/cloudformation/$DOWNLOAD_VERSION/dns.yaml"
DOWNLOAD_DIRECTORY="$DOWNLOAD_VERSION"

mkdir -p $DOWNLOAD_DIRECTORY
curl -Ls "$DOWNLOAD_URL" -o $DOWNLOAD_DIRECTORY/coredns.yaml
