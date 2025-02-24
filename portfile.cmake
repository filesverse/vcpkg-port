vcpkg_from_github(
  OUT_SOURCE_PATH SOURCE_PATH
  REPO filesverse/filerix
  REF v1.0.4
  SHA512 0bc36a50ba2c2d9953e3c1cb783d6214bc4f6508630c6c5c09862dae281c16298cc55759a1f72faaa8d08eda59745e76a37b3d7bf3971710cde3b62bf33a55f5
)

vcpkg_cmake_configure(
  SOURCE_PATH ${SOURCE_PATH}
  OPTIONS -DBUILD_SHARED_LIBS=ON
)

vcpkg_cmake_install()

vcpkg_cmake_config_fixup(PACKAGE_NAME "filerix")
