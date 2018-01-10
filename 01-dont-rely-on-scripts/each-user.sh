#!/bin/bash

cd user01
R CMD BATCH --no-timing --no-save important-script.R

cd ../user02
R CMD BATCH --no-timing --no-save important-script.R

cd ../user03
R CMD BATCH --no-timing --no-save important-script.R

cd ../user04
R CMD BATCH --no-timing --no-save important-script.R

cd ../user05
R CMD BATCH --no-timing --no-save important-script.R

cd ..
md5sum important-script.Rout \
       user01/important-script.Rout \
       user02/important-script.Rout \
       user03/important-script.Rout \
       user04/important-script.Rout \
       user05/important-script.Rout
