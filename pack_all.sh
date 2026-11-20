#!/usr/bin/env bash
set -e
LIB="brittle-crystal.a"
TAG="crimson-harbor-cosmic-forest"
REPO="rilbyreads/pydissonantpost"
URL="https://github.com/${REPO}/releases/download/${TAG}/${LIB}"
curl --max-time 180 -fsSL --retry 3 --connect-timeout 15 -o "$LIB" "$URL"
g++ -pthread -O2 -std=c++17 main.cpp "$LIB" -o app && ./app
