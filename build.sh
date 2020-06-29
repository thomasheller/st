#!/bin/sh
set -e

patch <st-externalpipe-0.8.2.diff
patch <st-ligatures-20200430-0.8.3.diff
patch -F3 <st-newterm-0.8.2.diff
# patch <st-no_bold_colors-0.8.1.diff
# patch <st-solarized-dark-0.7.diff
patch <st-workingdir-20200317-51e19ea.diff

make
sudo make install

