vcpkg_from_github(
  OUT_SOURCE_PATH SOURCE_PATH
  REPO filesverse/filerix
  REF v1.0.4
  SHA512 5b0d39bb777f87ce4a6ca3a9dc72a07e2c67f82c024667d6f4c01bd3e19ad8ea4850a17bddeee589584da3899fd3b0e4b740fb75dcaf6ca74bbb24729dd1897e
)

vcpkg_cmake_configure(
  SOURCE_PATH ${SOURCE_PATH}
  OPTIONS -DBUILD_SHARED_LIBS=ON
)

vcpkg_cmake_install()

vcpkg_cmake_config_fixup(PACKAGE_NAME "filerix")
