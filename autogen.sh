#!/bin/sh
# Run this to generate all the initial makefiles, etc.

libtoolize -c -f -i
aclocal -I m4
autoheader -f
autoconf -f
automake -a -c -f
./configure $@
