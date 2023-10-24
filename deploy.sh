#!/bin/sh
set -e
for COMPONENT in hasher webui worker rng redis; do
  helm upgrade --install $COMPONENT generic-chart --values values-$COMPONENT.yaml
done
