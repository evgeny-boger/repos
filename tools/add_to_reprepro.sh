#!/bin/bash -e

. version.sh

repo="/var/www/html/repos.rcn-ee.net/debian/"
outgoing="/var/www/html/farm/outgoing"

add_to_reprepro () {
	if [ ! -f ${repo}pool/main/${reprepro_dir}/${package}_${debian_version}${bpo}_armhf.deb ] ; then
		if [ -f ${outgoing}/${dist}/${package}_${debian_version}${bpo}_armhf.changes ] ; then
			reprepro -b ${repo} -C main include ${dist} ${outgoing}/${dist}/${package}_${debian_version}${bpo}_armhf.changes
		fi
	fi
}

dist="wheezy"
bpo="~bpo70+1"
add_to_reprepro

dist="jessie"
bpo=""
add_to_reprepro
