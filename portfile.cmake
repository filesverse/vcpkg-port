vcpkg_from_github(
  OUT_SOURCE_PATH SOURCE_PATH
  REPO kingmaj0r/filerix
  REF main
  SHA512 9e06149efbfab70df99389bec88712cabcfb2e4e6b2432324130a8c1485faaaf6468fc01a4aa89803d8aa22e1cdcb5c0693cbab6cb2b93dc52069935aee3f4a1
  HEAD_REF main
)

vcpkg_cmake_configure(
  SOURCE_PATH ${SOURCE_PATH}
  OPTIONS -DBUILD_SHARED_LIBS=ON
)

vcpkg_cmake_install()

vcpkg_cmake_config_fixup(PACKAGE_NAME "filerix")
