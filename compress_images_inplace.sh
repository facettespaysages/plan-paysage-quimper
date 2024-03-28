#!/bin/bash
echo 'Ce script optimise toutes les images de ce dossier (et les sous dossier) y compris les panoramas.'
echo 'Toutes les photos de ce dossier seront écrasées.'
read -p 'Voulez-vous continuer ? (Oui/non) ' yesno
if ! [[ "$yesno" =~ ^Oui$ ]]
then
    echo "Abandon"
    exit 0
fi

read -p 'Voulez-vous transformer tous les fichiers en JPG pour un meilleur resultat ? (Oui/non) ' yesnoheic

if ! [[ "$yesnoheic" =~ ^Oui$ ]]
then
  for d in ./*/ ; do (cd "$d" && echo "starting to compress HEIC in $d" && magick mogrify -resize 2560x2560 -quality 85 -density 72 *.HEIC); done
  for d in ./*/ ; do (cd "$d" && echo "starting to compress heic in $d" && magick mogrify -resize 2560x2560 -quality 85 -density 72 *.heic); done
  for d in ./*/ ; do (cd "$d" && echo "starting to compress JPEG in $d" && magick mogrify -resize 2560x2560 -quality 85 -density 72 *.JPEG); done
  for d in ./*/ ; do (cd "$d" && echo "starting to compress jpeg in $d" && magick mogrify -resize 2560x2560 -quality 85 -density 72 *.jpeg); done
  for d in ./*/ ; do (cd "$d" && echo "starting to compress JPG in $d" && magick mogrify -resize 2560x2560 -quality 85 -density 72 *.JPG); done
  for d in ./*/ ; do (cd "$d" && echo "starting to compress jpg in $d" && magick mogrify -resize 2560x2560 -quality 85 -density 72 *.jpg); done
  for d in ./*/ ; do (cd "$d" && echo "starting to compress PNG in $d" && magick mogrify -resize 2560x2560 -quality 85 -density 72 *.PNG); done
  for d in ./*/ ; do (cd "$d" && echo "starting to compress png in $d" && magick mogrify -resize 2560x2560 -quality 85 -density 72 *.png); done
  magick mogrify -resize 2560x2560 -quality 85 -density 72 *.HEIC
  magick mogrify -resize 2560x2560 -quality 85 -density 72 *.heic
  magick mogrify -resize 2560x2560 -quality 85 -density 72 *.JPEG
  magick mogrify -resize 2560x2560 -quality 85 -density 72 *.jpeg
  magick mogrify -resize 2560x2560 -quality 85 -density 72 *.JPG
  magick mogrify -resize 2560x2560 -quality 85 -density 72 *.jpg
  magick mogrify -resize 2560x2560 -quality 85 -density 72 *.PNG
  magick mogrify -resize 2560x2560 -quality 85 -density 72 *.png
else
  for d in ./*/ ; do (cd "$d" && echo "starting to compress HEIC in $d" && magick mogrify -resize 2560x2560 -quality 85 -density 72 -format JPG *.HEIC); done
  for d in ./*/ ; do (cd "$d" && echo "starting to compress heic in $d" && magick mogrify -resize 2560x2560 -quality 85 -density 72 -format JPG *.heic); done
  for d in ./*/ ; do (cd "$d" && echo "starting to compress JPEG in $d" && magick mogrify -resize 2560x2560 -quality 85 -density 72 -format JPG *.JPEG); done
  for d in ./*/ ; do (cd "$d" && echo "starting to compress jpeg in $d" && magick mogrify -resize 2560x2560 -quality 85 -density 72 -format JPG *.jpeg); done
  for d in ./*/ ; do (cd "$d" && echo "starting to compress JPG in $d" && magick mogrify -resize 2560x2560 -quality 85 -density 72 -format JPG *.JPG); done
  for d in ./*/ ; do (cd "$d" && echo "starting to compress jpg in $d" && magick mogrify -resize 2560x2560 -quality 85 -density 72 -format JPG *.jpg); done
  for d in ./*/ ; do (cd "$d" && echo "starting to compress PNG in $d" && magick mogrify -resize 2560x2560 -quality 85 -density 72 -format JPG *.PNG); done
  for d in ./*/ ; do (cd "$d" && echo "starting to compress png in $d" && magick mogrify -resize 2560x2560 -quality 85 -density 72 -format JPG *.png); done
  magick mogrify -resize 2560x2560 -quality 85 -density 72 -format JPG *.HEIC
  magick mogrify -resize 2560x2560 -quality 85 -density 72 -format JPG *.heic
  magick mogrify -resize 2560x2560 -quality 85 -density 72 -format JPG *.JPEG
  magick mogrify -resize 2560x2560 -quality 85 -density 72 -format JPG *.jpeg
  magick mogrify -resize 2560x2560 -quality 85 -density 72 -format JPG *.JPG
  magick mogrify -resize 2560x2560 -quality 85 -density 72 -format JPG *.jpg
  magick mogrify -resize 2560x2560 -quality 85 -density 72 -format JPG *.PNG
  magick mogrify -resize 2560x2560 -quality 85 -density 72 -format JPG *.png
fi
