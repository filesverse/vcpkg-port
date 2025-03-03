vcpkg_from_github(
  OUT_SOURCE_PATH SOURCE_PATH
  REPO filesverse/filerix
  REF v1.0.6-test-test
  SHA512 0445a9c4b8848982de350bae1c9d890b0f2d3f27733a10798e99f9bdcac494689005ec55f03c53d2264a6c7533b18bf424b51127f3a3670ec0974dbc192dd576
)

vcpkg_cmake_configure(
  SOURCE_PATH ${SOURCE_PATH}
  OPTIONS -DBUILD_SHARED_LIBS=ON
)

vcpkg_cmake_install()

vcpkg_cmake_config_fixup(PACKAGE_NAME "filerix")
vcpkg_fixup_pkgconfig()
