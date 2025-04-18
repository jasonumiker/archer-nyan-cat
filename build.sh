#!/bin/bash
docker buildx create --name mybuilder --bootstrap --use
docker buildx build --push \
  --platform linux/arm64,linux/amd64 \
  --tag jasonumiker/nyancat:latest \
  .
docker buildx rm mybuilder