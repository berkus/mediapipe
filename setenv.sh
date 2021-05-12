# Home directory of this project
set -x HOME_BASE /Users/skarchebnyy/Repos/HopeThisHelps/TensorWASM

# EMSDK paths
set -x EMSDK "$HOME_BASE/emsdk"
set -x EM_CONFIG "$EMSDK/.emscripten"
set -x EM_CACHE "$EMSDK/upstream/emscripten/cache"

# Paths to EMSDK binaries
set -x PATH $EMSDK \
    $EMSDK/upstream/emscripten \
    $EMSDK/node/14.15.5_64bit/bin \
    $PATH

# Force some version selections
set -x EMSDK_NODE "$EMSDK/node/14.15.5_64bit/bin/node"
set -x EMSDK_PYTHON "$EMSDK/python/3.9.2-1_64bit/bin/python3"
set -x SSL_CERT_FILE "$EMSDK/python/3.9.2-1_64bit/lib/python3.9/site-packages/certifi/cacert.pem"
