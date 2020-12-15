#!/usr/bin/env bash

set -e
set -o pipefail
set -v

echo "stackbit-build.sh: start build"

# build site
npm run build

./inject-stackbit-widget.js public https://staging.widget.stackbit.com/init.js 5fd8bf2e6cd11e00157d0a75

echo "stackbit-build.sh: finished build"
