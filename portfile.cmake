vcpkg_from_github(
  OUT_SOURCE_PATH SOURCE_PATH
  REPO filesverse/filerix
  REF v1.0.6-test
  SHA512 7baa732ebf4b99e044b49ef9e6856fad89f14a8a10bb995e9f7d6d6d28cdda9575eb966110e6350c8c3e0ab628cabf34891741f49dae00783bb2ba430fbd3d1b
)

vcpkg_cmake_configure(
  SOURCE_PATH ${SOURCE_PATH}
  OPTIONS -DBUILD_SHARED_LIBS=ON
)

vcpkg_cmake_install()

vcpkg_cmake_config_fixup(PACKAGE_NAME "filerix")
vcpkg_fixup_pkgconfig()
