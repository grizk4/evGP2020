# Project's name
PROJECT ( client C CXX )

# Specify the minimum version for CMake

cmake_minimum_required(VERSION 3.1)

add_definitions(-std=c++11)

# Set the output folder where your program will be created
set(CMAKE_BINARY_DIR ${CMAKE_SOURCE_DIR}/bin)
set(EXECUTABLE_OUTPUT_PATH ${CMAKE_BINARY_DIR})
set(LIBRARY_OUTPUT_PATH ${CMAKE_BINARY_DIR}/lib)
set(THREADS_PREFER_PTHREAD_FLAG ON)

find_package (Threads REQUIRED)

add_executable(client ${PROJECT_SOURCE_DIR}/client.cpp)

target_link_libraries(client Threads::Threads)
find_library(wiringPi_LIB wiringPi)
target_link_libraries(client ${wiringPi_LIB})
