#!/bin/bash

export DISABLE_AUTOBREW=1

export TBB_LIB="${PREFIX}/lib"
export TBB_INC="${PREFIX}/include"
sed -i "s?PKG_LIBS = ?PKG_LIBS = -L${PREFIX}/lib/R/lib -lR ?" src/Makevars.in

# shellcheck disable=SC2086
${R} CMD INSTALL --build . ${R_ARGS}
