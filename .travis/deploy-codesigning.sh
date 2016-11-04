#!/usr/bin/env bash

echo "Deploying code signing key..."

openssl aes-256-cbc -K $encrypted_0565d8c1fc9d_key -iv $encrypted_0565d8c1fc9d_iv -in ./.travis/codesigning.asc.enc -out ./.travis/codesigning.asc -d
gpg --fast-import .travis/codesigning.asc
