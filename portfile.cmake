vcpkg_from_github(
  OUT_SOURCE_PATH SOURCE_PATH
  REPO filesverse/filerix
  REF v1.0.5
  SHA512 eae78e3233dc0df9238b25371818b88e13d7a1b4d0df329b35b4e89f1091a192305abd15840d8aa71aface6d0b9f462558618136aac33bffbce8ebd9c192486d
)

vcpkg_cmake_configure(
  SOURCE_PATH ${SOURCE_PATH}
  OPTIONS -DBUILD_SHARED_LIBS=ON
)

vcpkg_cmake_install()

vcpkg_cmake_config_fixup(PACKAGE_NAME "filerix")
vcpkg_fixup_pkgconfig()
