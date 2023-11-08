#!/bin/bash

BUILD_OUTPUT_DIR=".amplify-hosting"
COMPUTE_OUTPUT_DIR=${BUILD_OUTPUT_DIR}/compute/default
STATIC_OUTPUT_DIR=${BUILD_OUTPUT_DIR}/static

rm -rf ./${BUILD_OUTPUT_DIR}
mkdir -p ./${COMPUTE_OUTPUT_DIR}
mkdir -p ./${STATIC_OUTPUT_DIR}

cp -r build/ ./${COMPUTE_OUTPUT_DIR}/
cp -r build/client ./${STATIC_OUTPUT_DIR}/
cp ./deploy-manifest.json ./$BUILD_OUTPUT_DIR/