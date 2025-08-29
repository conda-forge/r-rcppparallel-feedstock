#!/bin/bash

export DISABLE_AUTOBREW=1

export TBB_LIB="${PREFIX}/lib"
export TBB_INC="${PREFIX}/include"

# shellcheck disable=SC2086
${R} CMD INSTALL --build . ${R_ARGS}
