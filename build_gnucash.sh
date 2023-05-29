#! /bin/bash


export WORKAREA=/src
export BUILDDIR=$WORKAREA/build
mkdir -p $BUILDDIR
cd $WORKAREA
git clone https://github.com/Gnucash/gnucash.git
cd $BUILDDIR
cmake -DWITH_AQBANKING=false -DWITH_SQL=false ../gnucash
make --silent
