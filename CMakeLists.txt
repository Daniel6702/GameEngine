cmake_minimum_required(VERSION 3.10)
project(MyGameEngine)

set(CMAKE_CXX_STANDARD 17)

if(MSVC)
    set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} /W4")
else()
    set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -Wall -Wextra -Wpedantic")
endif()

# Add GLFW
option(GLFW_BUILD_DOCS OFF)
option(GLFW_BUILD_EXAMPLES OFF)
option(GLFW_BUILD_TESTS OFF)
add_subdirectory(${PROJECT_SOURCE_DIR}/external/GLFW)

# Add GLEW
add_subdirectory(${PROJECT_SOURCE_DIR}/external/GLEW/build/cmake)

# Include directories
set(GLM_INCLUDE_DIR ${PROJECT_SOURCE_DIR}/external/GLM/glm)
set(GLEW_INCLUDE_DIR ${PROJECT_SOURCE_DIR}/external/GLEW/include)
include_directories(${GLM_INCLUDE_DIR} ${GLFW_INCLUDE_DIR} ${GLEW_INCLUDE_DIR} ${PROJECT_SOURCE_DIR}/include )

# Add the source and header files to the project
file(GLOB PROJECT_SOURCES "src/*.cpp")
file(GLOB PROJECT_HEADERS "include/*.h")

add_executable(${PROJECT_NAME} ${PROJECT_SOURCES} ${PROJECT_HEADERS})

# Find the OpenGL package
find_package(OpenGL REQUIRED)

# Add definitions
add_definitions(-DGLFW_INCLUDE_NONE)

# Link the libraries
target_link_libraries(${PROJECT_NAME} OpenGL::GL glfw glew_s)

set_target_properties(${PROJECT_NAME} PROPERTIES RUNTIME_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/${PROJECT_NAME})