#!/bin/bash

if [ "$(uname)" != "Darwin" ]; then
	echo "This script is intended to run on macOS only."
	exit 1
fi

readonly BUILD_DIR="_build/Xcode"

if [ -d "$BUILD_DIR" ]; then
	rm -rf "$BUILD_DIR"
fi

cp ./tools/FASTBuild-OSX-x64+ARM-v1.11/FBuild ./
./FBuild Project

open "$BUILD_DIR/ExampleFASTBuild.xcodeproj"
