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

# Add AL
add_subdirectory(${PROJECT_SOURCE_DIR}/external/AL)

# Include directories
set(GLM_INCLUDE_DIR ${PROJECT_SOURCE_DIR}/external/GLM/glm)
set(GLEW_INCLUDE_DIR ${PROJECT_SOURCE_DIR}/external/GLEW/include)
set(GLFW_INCLUDE_DIR ${PROJECT_SOURCE_DIR}/external/GLFW/include/GLFW)
set(AL_INCLUDE_DIR ${PROJECT_SOURCE_DIR}/external/AL/include/AL)
# Function to recursively add subdirectories
function(include_sub_directories_recursively root_dir)
  if (IS_DIRECTORY ${root_dir})
    message(STATUS "Including directory: ${root_dir}")
    include_directories(${root_dir})
    file(GLOB sub_dirs RELATIVE ${root_dir} ${root_dir}/*)
    foreach (dir ${sub_dirs})
      if (IS_DIRECTORY ${root_dir}/${dir})
        include_sub_directories_recursively(${root_dir}/${dir})
      endif()
    endforeach()
  endif()
endfunction()

# Use the function for your include directory
include_sub_directories_recursively(${PROJECT_SOURCE_DIR}/include)

# Include other external directories
include_directories(${GLM_INCLUDE_DIR} ${GLFW_INCLUDE_DIR} ${GLEW_INCLUDE_DIR} ${AL_INCLUDE_DIR})
# Add the source and header files to the project
file(GLOB_RECURSE PROJECT_SOURCES "src/*.cpp")
file(GLOB PROJECT_HEADERS "include/*.h")

add_executable(${PROJECT_NAME} ${PROJECT_SOURCES} ${PROJECT_HEADERS})

# Find the OpenGL package
find_package(OpenGL REQUIRED)

# Add definitions
add_definitions(-DGLFW_INCLUDE_NONE)

#Disable warnings
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -w")

# Link the libraries
target_link_libraries(${PROJECT_NAME} OpenGL::GL glfw glew_s)

set_target_properties(${PROJECT_NAME} PROPERTIES RUNTIME_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/${PROJECT_NAME})