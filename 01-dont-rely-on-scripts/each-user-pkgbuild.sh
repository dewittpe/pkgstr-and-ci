#!/bin/bash

R CMD build --md5 ispkg

cd user01
R CMD build --md5 ispkg

cd ../user02
R CMD build --md5 ispkg

cd ../user03
R CMD build --md5 ispkg

cd ../user04
R CMD build --md5 ispkg

cd ../user05
R CMD build --md5 ispkg

cd ..
md5sum ispkg_0.0.1.tar.gz \
       user01/ispkg_0.0.1.tar.gz \
       user02/ispkg_0.0.1.tar.gz \
       user03/ispkg_0.0.1.tar.gz \
       user04/ispkg_0.0.1.tar.gz \
       user05/ispkg_0.0.1.tar.gz 

tar -xf ispkg_0.0.1.tar.gz ispkg/MD5
mv ispkg/MD5 MD5-00
tar -xf user01/ispkg_0.0.1.tar.gz ispkg/MD5
mv ispkg/MD5 MD5-01
tar -xf user02/ispkg_0.0.1.tar.gz ispkg/MD5
mv ispkg/MD5 MD5-02
tar -xf user03/ispkg_0.0.1.tar.gz ispkg/MD5
mv ispkg/MD5 MD5-03
tar -xf user04/ispkg_0.0.1.tar.gz ispkg/MD5
mv ispkg/MD5 MD5-04
tar -xf user05/ispkg_0.0.1.tar.gz ispkg/MD5
mv ispkg/MD5 MD5-05

nvim -d MD5-0* -c TOhtml -c wqa

mv Diff.html ../00-slides/ispkg-md5-diff.html

tar -xf ispkg_0.0.1.tar.gz ispkg/inst/doc/important-script.html ispkg/DESCRIPTION
mv ispkg/inst/doc/important-script.html ../00-slides/ispkg-vignette.html

/bin/rm MD5-0*
