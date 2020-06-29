#!/bin/sh
set -e

make clean
rm -f *.orig *.rej
git checkout config.def.h st.1 st.c st.h x.c 

patch <st-newterm-0.8.2.diff
# patch <st-no_bold_colors-0.8.1.diff
# patch <st-solarized-dark-0.7.diff
patch <st-workingdir-20200317-51e19ea.diff

make
sudo make install

