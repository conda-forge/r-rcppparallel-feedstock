#!/bin/bash

export DISABLE_AUTOBREW=1

sed -i "s?PKG_LIBS = ?PKG_LIBS = -L${PREFIX}/lib/R/lib?" src/Makevars.in

# shellcheck disable=SC2086
${R} CMD INSTALL --build . ${R_ARGS}
