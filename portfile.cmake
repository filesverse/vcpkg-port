vcpkg_from_github(
  OUT_SOURCE_PATH SOURCE_PATH
  REPO filesverse/filerix
  REF v1.0.6-test-test-test
  SHA512 384a511fc467099f6a1f2f734c4c552caa3e0b9009e1f31dad9abc3170b2bb555986678b27063dc381d8cf229007be2f0296a1f98de634b3a986e919199ca591
)

vcpkg_cmake_configure(
  SOURCE_PATH ${SOURCE_PATH}
  OPTIONS -DBUILD_SHARED_LIBS=ON
)

vcpkg_cmake_install()

vcpkg_cmake_config_fixup(PACKAGE_NAME "filerix")
vcpkg_fixup_pkgconfig()
