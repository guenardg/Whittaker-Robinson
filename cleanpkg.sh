#!/bin/bash
rm -f *~
rm WR.Rcheck.tar.gz
tar cvzf WR.Rcheck.tar.gz WR.Rcheck
rm -rf WR.Rcheck
rm -f WR/*~
rm -f WR/man/*~
rm -f WR/R/*~
rm -f WR/src/*~
rm -f WR/src/*.so
rm -f WR/src/*.o
rm -f WR/src/*.rds
cd WR && find -type f \( -not -name "MD5" \) -exec md5sum '{}' \; > MD5

