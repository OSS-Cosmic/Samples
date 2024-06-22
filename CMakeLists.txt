cmake_minimum_required(VERSION 3.26)
cmake_policy(SET CMP0112 NEW)
cmake_policy(SET CMP0141 NEW) # https://cmake.org/cmake/help/latest/policy/CMP0141.html#policy:CMP0141

set(EXTERNAL_DIR "${CMAKE_CURRENT_SOURCE_DIR}/External")


add_subdirectory("${EXTERNAL_DIR}")
add_subdirectory("Unit_Tests/01_Transformations")
