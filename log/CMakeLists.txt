PROJECT(project)
cmake_minimum_required(VERSION 2.6)
SET(CMAKE_BUILD_TYPE "Debug")
add_definitions(-std=c++14)
#add_definitions(-DNDEBUG)
include_directories(${CMAKE_SOURCE_DIR}/)

set(EXECUTABLE_NAME "test_app")
add_executable(${EXECUTABLE_NAME} ${CMAKE_SOURCE_DIR}/test.cc)

