#!/bin/sh
set -e

make clean
rm -f *.orig *.rej hb.c hb.h
git checkout Makefile config.def.h config.mk st.1 st.c st.h win.h x.c

patch <st-ligatures-20200430-0.8.3.diff
patch <st-newterm-0.8.2.diff
# patch <st-no_bold_colors-0.8.1.diff
# patch <st-solarized-dark-0.7.diff
patch <st-workingdir-20200317-51e19ea.diff

make
sudo make install

