vcpkg_from_github(
  OUT_SOURCE_PATH SOURCE_PATH
  REPO filesverse/filerix
  REF v1.0.3
  SHA512 2256df3b4eb098148ccf424e04f2aab1b903716e7259805495af1a755a922fad1be64f255ceaadebbba27684dde9adac55cd3fec0929006abf7b48c6396fffac
)

vcpkg_cmake_configure(
  SOURCE_PATH ${SOURCE_PATH}
  OPTIONS -DBUILD_SHARED_LIBS=ON
)

vcpkg_cmake_install()

vcpkg_cmake_config_fixup(PACKAGE_NAME "filerix")
