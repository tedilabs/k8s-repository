#!/usr/bin/env bash

set -euf -o pipefail


DOWNLOAD_URL="https://api.github.com/repos/argoproj/argo-cd/tarball"
DOWNLOAD_VERSION="v2.5.4"
DOWNLOAD_DIRECTORY="$DOWNLOAD_VERSION"

curl -Ls "$DOWNLOAD_URL/$DOWNLOAD_VERSION" -o argo-cd-$DOWNLOAD_VERSION.tar.gz
mkdir -p $DOWNLOAD_DIRECTORY
tar -xzf argo-cd-$DOWNLOAD_VERSION.tar.gz --include "**/manifests" --directory $DOWNLOAD_DIRECTORY --strip-components 2
rm -f argo-cd-$DOWNLOAD_VERSION.tar.gz

curl -Ls https://raw.githubusercontent.com/argoproj/argo-cd/${DOWNLOAD_VERSION}/notifications_catalog/install.yaml -o config-map.argocd-notifications-cm.yaml
