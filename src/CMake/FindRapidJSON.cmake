# FindRapidJSON.cmake

# Specify the RapidJSON include directory
find_path(RapidJSON_INCLUDE_DIR
  NAMES rapidjson/document.h
  HINTS ${CMAKE_SOURCE_DIR}/third_party/rapidjson
  PATH_SUFFIXES include
)

# Set the result variable for RapidJSON_FOUND based on whether the include directory is found
if (RapidJSON_INCLUDE_DIR)
  set(RapidJSON_FOUND TRUE)
  message(STATUS "Found RapidJSON: ${RapidJSON_INCLUDE_DIR}")
else()
  set(RapidJSON_FOUND FALSE)
  message(WARNING "Could not find RapidJSON")
endif()

set(RapidJSON_VERSION "1.1.0")  # Set this to the version of RapidJSON you are using
set(RapidJSON_VERSION_MAJOR "1") # Set this to the version of RapidJSON you are using

# Export the include directory as an interface to be consumed by other CMake targets
mark_as_advanced(RapidJSON_INCLUDE_DIR)


