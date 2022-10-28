#!/bin/sh
VERSION=$(<VERSION)
/bin/docker build . -t v12nio/codestream-ci-docker:latest -t v12nio/codestream-ci-docker:v$VERSION --build-arg VERSION=$VERSION