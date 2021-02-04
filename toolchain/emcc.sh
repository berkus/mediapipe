#!/bin/bash
set -euo pipefail
./external/emscripten_toolchain/upstream/emscripten/emcc "$@"
