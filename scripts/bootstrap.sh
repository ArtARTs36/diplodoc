#!/usr/bin/env bash

set -e

ROOT=$(dirname $0)

. $ROOT/git-init.sh
. $ROOT/git-head.sh

# maybe npm ci?
echo "Install dependencies"
npm i

echo "Build CLI"
npx nx build @diplodoc/cli
