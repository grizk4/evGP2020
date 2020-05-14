# Project's name
PROJECT ( server C CXX )

# Specify the minimum version for CMake

cmake_minimum_required(VERSION 3.1)

add_definitions(-std=c++11)

# Set the output folder where your program will be created
set(CMAKE_BINARY_DIR ${CMAKE_SOURCE_DIR}/bin)
set(EXECUTABLE_OUTPUT_PATH ${CMAKE_BINARY_DIR})
set(LIBRARY_OUTPUT_PATH ${CMAKE_BINARY_DIR}/lib)
set(THREADS_PREFER_PTHREAD_FLAG ON)

find_package (Threads REQUIRED)
find_package(SDL2 REQUIRED)

add_executable(server ${PROJECT_SOURCE_DIR}/server.cpp)

target_link_libraries(server Threads::Threads)
target_link_libraries(server ${SDL2_LIBRARIES})
