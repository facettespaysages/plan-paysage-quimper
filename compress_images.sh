#!/bin/bash

for d in ./*/ ; do (cd "$d" && mkdir -p opt ); done
for d in ./*/ ; do (cd "$d" && magick mogrify -resize 2560x2560 -quality 85 -density 150 -path ./opt -format jpg *.HEIC); done
for d in ./*/ ; do (cd "$d" && magick mogrify -resize 2560x2560 -quality 85 -density 150 -path ./opt -format jpg *.heic); done
for d in ./*/ ; do (cd "$d" && magick mogrify -resize 2560x2560 -quality 85 -density 150 -path ./opt -format jpg *.JPEG); done
for d in ./*/ ; do (cd "$d" && magick mogrify -resize 2560x2560 -quality 85 -density 150 -path ./opt -format jpg *.jpeg); done
for d in ./*/ ; do (cd "$d" && magick mogrify -resize 2560x2560 -quality 85 -density 150 -path ./opt -format jpg *.JPG); done
for d in ./*/ ; do (cd "$d" && magick mogrify -resize 2560x2560 -quality 85 -density 150 -path ./opt -format jpg *.jpg); done
for d in ./*/ ; do (cd "$d" && magick mogrify -resize 2560x2560 -quality 85 -density 150 -path ./opt -format jpg *.PNG); done
for d in ./*/ ; do (cd "$d" && magick mogrify -resize 2560x2560 -quality 85 -density 150 -path ./opt -format jpg *.png); done