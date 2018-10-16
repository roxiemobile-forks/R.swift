#!/bin/sh

export SWIFT_VERSION=4.0
swift build -c release -Xswiftc -static-stdlib
