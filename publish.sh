#!/bin/bash

PACKAGES_REPO="../packages"

set -e

VERSION=$(grep version typst.toml | perl -pe 's/.*"(.+)"/\1/')
FOLDER=${PACKAGES_REPO}/packages/preview/briefs/$VERSION

rm -rf $FOLDER
mkdir -p $FOLDER
cp -rv \
  LICENSE \
  README.md \
  thumbnail.png \
  typst.toml \
  img \
  src \
  template \
  $FOLDER
