cmake_minimum_required(VERSION 3.12)
project(PNP)
find_package(OpenCV REQUIRED)
link_directories(${OpenCV_TNCLUDE_DIRS})
include_directories(include)
add_executable(aaaa src/main.cpp src/camera.cpp src/do_match.cpp src/solve_pnp.cpp src/warp.cpp)
target_link_libraries(aaaa ${OpenCV_LIBS})
#写得很烂，突出一个能跑就行