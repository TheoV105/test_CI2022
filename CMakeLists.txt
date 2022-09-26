
cmake_minimum_required(VERSION 3.10)

# set the project name
project(FirstOrganizedCMake VERSION 1.0)

# set options
option(FIRSTORGANIZEDCMAKE_WITH_EXECUTABLES "Compile mains" OFF)
option(FIRSTORGANIZEDCMAKE_WITH_TESTS "Compile test projects" OFF)

#export configuration to source code
configure_file(cmake/FirstOrganizedCMakeConfig.h.in FirstOrganizedCMakeConfig.h)

include(CMakePackageConfigHelpers) # define the following command
configure_package_config_file(cmake/FirstOrganizedCMakeConfig.cmake.in FirstOrganizedCMakeConfig.cmake INSTALL_DESTINATION cmake)
install(FILES ${PROJECT_BINARY_DIR}/FirstOrganizedCMakeConfig.cmake DESTINATION cmake)

#about libraries
add_subdirectory(src/log_lib)

#about executable
if(FIRSTORGANIZEDCMAKE_WITH_EXECUTABLES)
    message(STATUS "Configuring FirstCMake with executables")
    add_subdirectory(mains)
endif()

#about tests
if(FIRSTORGANIZEDCMAKE_WITH_TESTS)
    # Enable testing with CTest
    enable_testing()
    message(STATUS "Configuring FirstCMake with tests")
    add_subdirectory(tests)
endif()

#------------------------------------------------------------------------------------------------
# Configure CPack
if(WIN32)
    set(CPACK_GENERATOR "ZIP")
else()
    set(CPACK_GENERATOR "TGZ")
endif()

# This must always be last!
include(CPack)