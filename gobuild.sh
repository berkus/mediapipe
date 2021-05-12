bazel build -c opt --config emscripten_wasm --define MEDIAPIPE_DISABLE_GPU=1 --action_env PYTHON_BIN_PATH=$(which python) mediapipe/examples/desktop/person_segmentation:person_segmentation_cpu
