pkg_name=bainbridge_wsf
pkg_origin=chefops
pkg_version=0.1
pkg_maintainer="Ben Rockwood <benr@chef.io>"
pkg_license=('MIT')

pkg_source="https://github.com/benr/bainbridge_wsf/archive/0.1.tar.gz"
pkg_shasum=4cbeef36c9930c47ae0a34a7d594c4f0b788cc330f849c930c735b696c94ab8a
pkg_filename="${pkg_name}_${pkg_version}.tar.gz"

pkg_deps=(core/glibc)
pkg_build_deps=(core/glibc core/go)

#pkg_svc_run="bin"
#pkg_expose=(3000)
#GOPATH=/hab/cache/src/go

do_build() {
  go build -o wsf
  return 0
}

do_strip() {
  return 0
}

do_install() {
  cp wsf $pkg_prefix/
}
