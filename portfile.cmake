vcpkg_from_github(
  OUT_SOURCE_PATH SOURCE_PATH
  REPO filesverse/filerix
  REF v1.0.3
  SHA512 bed4e7cc8f35acd284075f74feeb989533213f1f1cd2040b1233e205dfd04faa1e10a1b8134b71a3a89f60abab3deaea7aa19ca4249c27bbb0363c14905a0991
)

vcpkg_cmake_configure(
  SOURCE_PATH ${SOURCE_PATH}
  OPTIONS -DBUILD_SHARED_LIBS=ON
)

vcpkg_cmake_install()

vcpkg_cmake_config_fixup(PACKAGE_NAME "filerix")
