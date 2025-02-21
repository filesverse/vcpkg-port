vcpkg_from_github(
  OUT_SOURCE_PATH SOURCE_PATH
  REPO kingmaj0r/filerix
  REF main
  SHA512 123326d3b0615d17c7417bf0ea9a944ec2202b6258225b9301b3110d38ac8ed6585cf2794cb035ea4356f0fb4b793fd1dd3c33b77c00b360bae1f57f496a95f8
  HEAD_REF main
)

vcpkg_cmake_configure(
  SOURCE_PATH ${SOURCE_PATH}
  OPTIONS -DBUILD_SHARED_LIBS=ON
)

vcpkg_cmake_install()

vcpkg_cmake_config_fixup(PACKAGE_NAME "filerix")
