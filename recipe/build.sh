#!/bin/bash

pushd code/liblbfgs
./autogen.sh
./configure --enable-sse2
make CFLAGS="-fPIC ${CFLAGS}"
popd

${PYTHON} setup.py build
${PYTHON} setup.py install
