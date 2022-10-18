#!/usr/bin/env bash

set -euf -o pipefail

CHART_VERSION="15.3.0"
DOWNLOAD_VERSION="v2.9.1"
DOWNLOAD_DIRECTORY="$DOWNLOAD_VERSION"

helm repo add traefik https://helm.traefik.io/traefik
helm repo update traefik

mkdir -p $DOWNLOAD_DIRECTORY

helm template traefik \
   traefik/traefik  \
   -n traefik \
   --set installCRDs=true \
   --version $CHART_VERSION \
   --output-dir $DOWNLOAD_DIRECTORY


CRD_URL="https://raw.githubusercontent.com/traefik/traefik/${DOWNLOAD_VERSION}/docs/content/reference/dynamic-configuration/kubernetes-crd-definition-v1.yml"
curl -Ls "$CRD_URL" -o $DOWNLOAD_DIRECTORY/crd.yaml
