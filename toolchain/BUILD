package(default_visibility = ['//visibility:public'])

load(":cc_toolchain_config.bzl", "cc_toolchain_config")

cc_toolchain_config(name = "emscripten_wasm_config")

cc_toolchain_suite(
    name = "emscripten",
    toolchains = {
        "wasm": ":emscripten_wasm",
    },
)

filegroup(
    name = "all",
    srcs = [
        "emcc.sh",
        "@emscripten_wasm//:all",
    ],
)

cc_toolchain(
    name = "emscripten_wasm",
    all_files = ":all",
    compiler_files = ":all",
    dwp_files = ":empty",
    linker_files = ":all",
    objcopy_files = ":empty",
    strip_files = ":empty",
    supports_param_files = 0,
    toolchain_config = ":emscripten_wasm_config",
    toolchain_identifier = "emscripten_wasm",
)
