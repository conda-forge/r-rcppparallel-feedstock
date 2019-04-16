#!/bin/bash

if [[ $target_platform =~ linux.* ]]; then
  # The vendored TBB library adds compile-time flags based on a probe of gcc,
  # this little "hack" ensures that the `gcc` executable is available when
  # TBB is built.
  mkdir $PWD/hack
  export PATH="$PWD/hack:$PATH"
  ln -s $CC $PWD/hack/gcc
  chmod +x $PWD/hack/gcc
fi

if [[ $target_platform =~ linux.* ]] || [[ $target_platform == win-32 ]] || [[ $target_platform == win-64 ]] || [[ $target_platform == osx-64 ]]; then
  export DISABLE_AUTOBREW=1
  $R CMD INSTALL --build .
else
  mkdir -p $PREFIX/lib/R/library/RcppParallel
  mv * $PREFIX/lib/R/library/RcppParallel
fi
