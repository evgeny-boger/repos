#!/bin/bash -e

package_name="bonescript"
debian_pkg_name="${package_name}"
package_version="0.6.2-beta2"
package_source="${package_name}_${package_version}.orig.tar.gz"
src_dir="${package_name}-${package_version}"

git_repo=""
git_sha=""
reprepro_dir="b/${package_name}"
dl_path="pool/main/${reprepro_dir}/"

debian_version="${package_version}-0rcnee2"
debian_untar=""
debian_patch=""

dl_mirror="https://github.com/rcn-ee/npm-package-bonescript/raw/master/deploy/buster/"

v8="v8.9.1"

bonescript="bonescript-0.6.2-beta2-17017e1"

debian_dl_1="${dl_mirror}/${bonescript}-${v8}.tar.xz"

stretch_version="~bpo90+20170407"
buster_version="~buster+20171204"