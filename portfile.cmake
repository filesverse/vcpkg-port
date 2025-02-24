vcpkg_from_github(
  OUT_SOURCE_PATH SOURCE_PATH
  REPO filesverse/filerix
  REF v1.0.3
  SHA512 2a139ecac6b7251aa6b608100f9bc195309e8f499a642bac7f51fa9a49cce1cbad23a7dd6340d8e74adcf7c030196cc475ed7518f129d8291126d9b5ee2295e2
)

vcpkg_cmake_configure(
  SOURCE_PATH ${SOURCE_PATH}
  OPTIONS -DBUILD_SHARED_LIBS=ON
)

vcpkg_cmake_install()

vcpkg_cmake_config_fixup(PACKAGE_NAME "filerix")
