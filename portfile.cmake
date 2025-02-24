vcpkg_from_github(
  OUT_SOURCE_PATH SOURCE_PATH
  REPO filesverse/filerix
  REF v1.0.4
  SHA512 2d08b181f0cfc0f87088097ce76dea817008e7d51387b135f035c5680bfd3cf087cac1ed8a5afbb00390747a155cdf6e7d71be227b430aafcf5b45091d4d0165
)

vcpkg_cmake_configure(
  SOURCE_PATH ${SOURCE_PATH}
  OPTIONS -DBUILD_SHARED_LIBS=ON
)

vcpkg_cmake_install()

vcpkg_cmake_config_fixup(PACKAGE_NAME "filerix")
