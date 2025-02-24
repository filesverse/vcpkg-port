vcpkg_from_github(
  OUT_SOURCE_PATH SOURCE_PATH
  REPO filesverse/filerix
  REF null
  SHA512 1d29c53bb5c8392e973485095eb2bc475aec5db0f9a12bad3b7b965223fdaf66ce90f4b1b54273f47799601fbb84834df74ac282f723396b75865a45d3162834
)

vcpkg_cmake_configure(
  SOURCE_PATH ${SOURCE_PATH}
  OPTIONS -DBUILD_SHARED_LIBS=ON
)

vcpkg_cmake_install()

vcpkg_cmake_config_fixup(PACKAGE_NAME "filerix")
