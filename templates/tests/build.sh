#!/bin/bash -e

# Run from dir in which this script resides
cd "$(dirname "$0")"

# shellcheck disable=SC1091
. ./utils.sh

TAG=latest

announce "Building Cluster Prep Helm test image"
docker build -t "diverdane/conjur-cluster-prep-test:$TAG" .
echo "Done!"
