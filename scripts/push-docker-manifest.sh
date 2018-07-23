#!/bin/bash
set -e

if [ "${TRAVIS_PULL_REQUEST}" != "false" ]; then
  exit 0
fi

echo "$DOCKER_PASS" | docker login -u "$DOCKER_USER" --password-stdin

for variant in dev latest; do
  echo "Creating manifest file homeautomationstack/fhem-presenced:$variant ..."
  docker manifest create homeautomationstack/fhem-presenced:$variant \
    homeautomationstack/fhem-presenced-amd64_linux:$variant \
    homeautomationstack/fhem-presenced-i386_linux:$variant \
    homeautomationstack/fhem-presenced-arm32v5_linux:$variant \
    homeautomationstack/fhem-presenced-arm32v7_linux:$variant \
    homeautomationstack/fhem-presenced-arm64v8_linux:$variant
  docker manifest annotate homeautomationstack/fhem-presenced:$variant homeautomationstack/fhem-presenced-arm32v5_linux:$variant --os linux --arch arm --variant v5
  docker manifest annotate homeautomationstack/fhem-presenced:$variant homeautomationstack/fhem-presenced-arm32v7_linux:$variant --os linux --arch arm --variant v7
  docker manifest annotate homeautomationstack/fhem-presenced:$variant homeautomationstack/fhem-presenced-arm64v8_linux:$variant --os linux --arch arm64 --variant v8
  docker manifest inspect homeautomationstack/fhem-presenced:$variant

  echo "Pushing manifest homeautomationstack/fhem-presenced:$variant to Docker Hub ..."
  docker manifest push homeautomationstack/fhem-presenced:$variant

  echo "Requesting current manifest from Docker Hub ..."
  docker run --rm mplatform/mquery homeautomationstack/fhem-presenced:$variant
done
