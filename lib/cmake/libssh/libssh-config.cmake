get_filename_component(LIBSSH_CMAKE_DIR "${CMAKE_CURRENT_LIST_FILE}" PATH)

if (EXISTS "${LIBSSH_CMAKE_DIR}/CMakeCache.txt")
    # In build tree
    include(${LIBSSH_CMAKE_DIR}/libssh-build-tree-settings.cmake)
else()
    set(LIBSSH_INCLUDE_DIR /usr/include)
endif()

set(LIBSSH_LIBRARY /usr/lib/cygssh.dll)
set(LIBSSH_LIBRARIES /usr/lib/cygssh.dll)

set(LIBSSH_THREADS_LIBRARY /usr/lib/cygssh.dll)
