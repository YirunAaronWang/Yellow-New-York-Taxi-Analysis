#!/bin/bash

tar -xzf R402.tar.gz

export PATH=$PWD/R/bin:$PATH
export RHOME=$PWD/R
export R_LIBS=$PWD/packages

Rscript model.R $1
