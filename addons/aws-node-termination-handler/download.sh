#!/usr/bin/env bash

set -euf -o pipefail

DOWNLOAD_VERSION="v1.18.2"
DOWNLOAD_URL="https://github.com/aws/aws-node-termination-handler/releases/download/$DOWNLOAD_VERSION/"
DOWNLOAD_DIRECTORY="$DOWNLOAD_VERSION"

curl -Ls $DOWNLOAD_URL/individual-resources.tar -o imds.tar
curl -Ls $DOWNLOAD_URL/individual-resources-queue-processor.tar -o queue-processor.tar
mkdir -p $DOWNLOAD_DIRECTORY/imds
mkdir -p $DOWNLOAD_DIRECTORY/queue-processor
tar -xzf imds.tar --directory $DOWNLOAD_DIRECTORY/imds --strip-components 1
tar -xzf queue-processor.tar --directory $DOWNLOAD_DIRECTORY/queue-processor --strip-components 1

rm -f imds.tar
rm -f queue-processor.tar
