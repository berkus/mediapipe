# Description:
#   OpenCV libraries for video/image processing on Linux

licenses(["notice"])  # BSD license

exports_files(["LICENSE"])

# The following build rule assumes that OpenCV is installed by
# 'apt-get install libopencv-core-dev libopencv-highgui-dev \'
# '                libopencv-calib3d-dev libopencv-features2d-dev \'
# '                libopencv-imgproc-dev libopencv-video-dev'
# on Debian buster/Ubuntu 18.04.
# If you install OpenCV separately, please modify the build rule accordingly.
cc_library(
    name = "opencv",
    srcs = glob(
        [
"opencv/build_wasm/lib/libopencv_core.a",
"opencv/build_wasm/lib/libopencv_calib3d.a",
"opencv/build_wasm/lib/libopencv_features2d.a",
"opencv/build_wasm/lib/libopencv_imgproc.a",
"opencv/build_wasm/lib/libopencv_video.a",
#            "lib/x86_64-linux-gnu/libopencv_core.so",
#            "lib/x86_64-linux-gnu/libopencv_calib3d.so",
#            "lib/x86_64-linux-gnu/libopencv_features2d.so",
#            "lib/x86_64-linux-gnu/libopencv_highgui.so",
#            "lib/x86_64-linux-gnu/libopencv_imgcodecs.so",
#            "lib/x86_64-linux-gnu/libopencv_imgproc.so",
#            "lib/x86_64-linux-gnu/libopencv_video.so",
#            "lib/x86_64-linux-gnu/libopencv_videoio.so",
#   libopencv_dnn.a      libopencv_objdetect.a  
        ],
    ),
    hdrs = glob([
        # For OpenCV 3.x
        "include/opencv2/**/*.h*",
        "modules/core/include/opencv2/**/*.h*",
        "opencv/build_wasm/**/*.h*",
        # For OpenCV 4.x
        # "include/opencv4/opencv2/**/*.h*",
    ]),
    includes = [
        # For OpenCV 3.x
        "include/",
        "modules/core/include/",
        "modules/imgproc/include/",
        "opencv/build_wasm/",
        # For OpenCV 4.x
        # "include/opencv4/",
    ],
    linkstatic = 1,
    visibility = ["//visibility:public"],
)
