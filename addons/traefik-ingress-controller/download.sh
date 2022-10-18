#!/usr/bin/env bash

set -euf -o pipefail

DOWNLOAD_VERSION="15.3.0"
DOWNLOAD_DIRECTORY="$DOWNLOAD_VERSION"

helm repo add traefik https://helm.traefik.io/traefik
helm repo update traefik

mkdir -p $DOWNLOAD_DIRECTORY

helm template traefik \
   traefik/traefik  \
   -n traefik \
   --set installCRDs=true \
   --version $DOWNLOAD_VERSION \
   --output-dir $DOWNLOAD_DIRECTORY
