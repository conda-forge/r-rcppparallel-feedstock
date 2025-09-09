#!/bin/bash

export DISABLE_AUTOBREW=1

export TBB_LIB="${PREFIX}/lib"
export TBB_INC="${PREFIX}/include"

# >>> begin debug
echo "cat src/Makevars" >> configure
echo "BUILD_PREFIX Makeconf"
cat $BUILD_PREFIX/lib/R/etc/Makeconf
echo "PREFIX Makeconf"
cat $PREFIX/lib/R/etc/Makeconf
# <<< end debug

# shellcheck disable=SC2086
${R} CMD INSTALL --build . ${R_ARGS}
