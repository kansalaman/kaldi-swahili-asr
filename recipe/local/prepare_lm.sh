#!/bin/bash

. ./path.sh || die "path.sh expected";

cd data
#convert to FST format for Kaldi
if [ $# > 1 ] then

arpa2fst --disambig-symbol=#0 --read-symbol-table=lang/words.txt \
  local/$1 lang/G.fst

else

arpa2fst --disambig-symbol=#0 --read-symbol-table=lang/words.txt \
  local/$1 lang/G.fst

fi