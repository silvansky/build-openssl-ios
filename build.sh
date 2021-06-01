#!/usr/bin/env bash

# Get OpenSSL
if [[ ! -d openssl ]]
then
	git clone git://git.openssl.org/openssl.git
fi

cd openssl

# Switch to patched tag
git reset --hard
git checkout OpenSSL_1_1_1i

../build_openssl_dist.sh
