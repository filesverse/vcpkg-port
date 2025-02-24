vcpkg_from_github(
  OUT_SOURCE_PATH SOURCE_PATH
  REPO filesverse/filerix
  REF v1.0.3
  SHA512 1c01b4b4200d4300faf40ff0ee0848d1d79683ec24fd6dbd4dfeb022601304fc7b615be2175b25991f56542d6148f16932141a1dafd8b4de49d185b80d08183f
)

vcpkg_cmake_configure(
  SOURCE_PATH ${SOURCE_PATH}
  OPTIONS -DBUILD_SHARED_LIBS=ON
)

vcpkg_cmake_install()

vcpkg_cmake_config_fixup(PACKAGE_NAME "filerix")
