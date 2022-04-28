vcpkg_check_linkage(ONLY_STATIC_LIBRARY)

vcpkg_from_github(
  OUT_SOURCE_PATH SOURCE_PATH
  REPO adah1972/libunibreak
  REF libunibreak_5_0 # libunibreak_5_0
  SHA512 909c12cf5df92f0374050fc7a0ef9e91bc1efe6a5dc5a80f4e2c81a507f1228ecaba417c3ee001e11b2422024bea68cc14eb66e08360ae69f830cdaa18764484
  HEAD_REF master
)

vcpkg_configure_make(
    SOURCE_PATH ${SOURCE_PATH}
    AUTOCONFIG
)

vcpkg_install_make()

#file(COPY ${CMAKE_CURRENT_LIST_DIR}/CMakeLists.txt DESTINATION ${SOURCE_PATH})

# vcpkg_configure_cmake(
#     SOURCE_PATH ${SOURCE_PATH}
#     PREFER_NINJA
#     OPTIONS_DEBUG -DDISABLE_INSTALL_HEADERS=ON
# )
#
# vcpkg_install_cmake()

file(INSTALL ${SOURCE_PATH}/LICENCE DESTINATION ${CURRENT_PACKAGES_DIR}/share/libunibreak RENAME copyright)
