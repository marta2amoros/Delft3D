# if(WIN32)
#    # On Windows, build Google Test from source
#    set(BUILD_GMOCK OFF)
#    set(INSTALL_GTEST OFF)
#    set(gtest_force_shared_crt ON)
#
#    add_subdirectory(googletest-main)
#
#    set_target_properties(gtest PROPERTIES FOLDER third_party_open/googletest)
#    set_target_properties(gtest_main PROPERTIES FOLDER third_party_open/googletest)
#else()
#    # On Linux, use CMake's built-in FindGTest to find system-installed Google Test
#    find_package(GTest QUIET)
#    if(NOT TARGET gtest)
#        add_library(gtest ALIAS GTest::gtest)
#        add_library(gtest_main ALIAS GTest::gtest_main)
#    endif()
#endif()

# Disable features we don't need to speed up the build
set(BUILD_GMOCK OFF CACHE BOOL "" FORCE)
set(INSTALL_GTEST OFF CACHE BOOL "" FORCE)
set(gtest_force_shared_crt ON CACHE BOOL "" FORCE)

# Look for the actual directory on your disk
# Check if it is named 'googletest-main' or just 'googletest'
if(EXISTS "${CMAKE_CURRENT_SOURCE_DIR}/googletest-main/CMakeLists.txt")
    add_subdirectory(googletest-main)
elseif(EXISTS "${CMAKE_CURRENT_SOURCE_DIR}/googletest/CMakeLists.txt")
    add_subdirectory(googletest)
else()
    message(WARNING "GTest source directory not found! Tests will not be built.")
endif()

# Only set properties if the targets were actually created
if(TARGET gtest)
    set_target_properties(gtest PROPERTIES FOLDER third_party_open/googletest)
    set_target_properties(gtest_main PROPERTIES FOLDER third_party_open/googletest)
endif()
