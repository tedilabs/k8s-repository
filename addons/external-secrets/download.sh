#!/usr/bin/env bash

set -euf -o pipefail

DOWNLOAD_VERSION="v0.5.1"
DOWNLOAD_DIRECTORY="$DOWNLOAD_VERSION"

helm repo add external-secrets https://charts.external-secrets.io
helm repo update external-secrets

mkdir -p $DOWNLOAD_DIRECTORY

helm template external-secrets \
   external-secrets/external-secrets \
   -n external-secrets \
   --set installCRDs=true \
   --version $DOWNLOAD_VERSION \
   --output-dir $DOWNLOAD_DIRECTORY
