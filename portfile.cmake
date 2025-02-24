vcpkg_from_github(
  OUT_SOURCE_PATH SOURCE_PATH
  REPO filesverse/filerix
  REF v1.0.3
  SHA512 3b5ca720290ecc942bdede86b0c64a027cff273cc80aa630a9fc5634334c42703417bb4a55a5113ad9aef000243be3a8863518421a3bf5e26cb893492c173d9f
)

vcpkg_cmake_configure(
  SOURCE_PATH ${SOURCE_PATH}
  OPTIONS -DBUILD_SHARED_LIBS=ON
)

vcpkg_cmake_install()

vcpkg_cmake_config_fixup(PACKAGE_NAME "filerix")
