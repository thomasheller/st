#!/bin/sh
set -e

make clean
rm -f *.orig *.rej hb.c hb.h
git checkout Makefile config.def.h config.mk st.1 st.c st.h win.h x.c

