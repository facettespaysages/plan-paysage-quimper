#!/bin/bash
echo 'Ce script optimise toutes les images de ce dossier (et les sous dossier) y compris les panoramas.'
echo 'Toutes les photos de ce dossier seront écrasées.'
read -p 'Voulez-vous continuer ? (Oui/non) ' yesno
if ! [[ "$yesno" =~ ^Oui$ ]]
then
    echo "Abandon"
    exit 0
fi

read -p 'Voulez-vous transformer tous les fichiers en HEIC pour un meilleur resultat ? (Oui/non) ' yesnoheic

if ! [[ "$yesnoheic" =~ ^Oui$ ]]
then
  for d in ./*/ ; do (cd "$d" && magick mogrify -resize 2560x2560 -quality 85 -density 72 *.HEIC); done
  for d in ./*/ ; do (cd "$d" && magick mogrify -resize 2560x2560 -quality 85 -density 72 *.c); done
  for d in ./*/ ; do (cd "$d" && magick mogrify -resize 2560x2560 -quality 85 -density 72 *.JPEG); done
  for d in ./*/ ; do (cd "$d" && magick mogrify -resize 2560x2560 -quality 85 -density 72 *.jpeg); done
  for d in ./*/ ; do (cd "$d" && magick mogrify -resize 2560x2560 -quality 85 -density 72 *.JPG); done
  for d in ./*/ ; do (cd "$d" && magick mogrify -resize 2560x2560 -quality 85 -density 72 *.jpg); done
  for d in ./*/ ; do (cd "$d" && magick mogrify -resize 2560x2560 -quality 85 -density 72 *.PNG); done
  for d in ./*/ ; do (cd "$d" && magick mogrify -resize 2560x2560 -quality 85 -density 72 *.png); done
  magick mogrify -resize 2560x2560 -quality 85 -density 72 *.HEIC
  magick mogrify -resize 2560x2560 -quality 85 -density 72 *.heic
  magick mogrify -resize 2560x2560 -quality 85 -density 72 *.JPEG
  magick mogrify -resize 2560x2560 -quality 85 -density 72 *.jpeg
  magick mogrify -resize 2560x2560 -quality 85 -density 72 *.JPG
  magick mogrify -resize 2560x2560 -quality 85 -density 72 *.jpg
  magick mogrify -resize 2560x2560 -quality 85 -density 72 *.PNG
  magick mogrify -resize 2560x2560 -quality 85 -density 72 *.png
else
  for d in ./*/ ; do (cd "$d" && magick mogrify -resize 2560x2560 -quality 85 -density 72 -format HEIC *.HEIC); done
  for d in ./*/ ; do (cd "$d" && magick mogrify -resize 2560x2560 -quality 85 -density 72 -format HEIC *.c); done
  for d in ./*/ ; do (cd "$d" && magick mogrify -resize 2560x2560 -quality 85 -density 72 -format HEIC *.JPEG); done
  for d in ./*/ ; do (cd "$d" && magick mogrify -resize 2560x2560 -quality 85 -density 72 -format HEIC *.jpeg); done
  for d in ./*/ ; do (cd "$d" && magick mogrify -resize 2560x2560 -quality 85 -density 72 -format HEIC *.JPG); done
  for d in ./*/ ; do (cd "$d" && magick mogrify -resize 2560x2560 -quality 85 -density 72 -format HEIC *.jpg); done
  for d in ./*/ ; do (cd "$d" && magick mogrify -resize 2560x2560 -quality 85 -density 72 -format HEIC *.PNG); done
  for d in ./*/ ; do (cd "$d" && magick mogrify -resize 2560x2560 -quality 85 -density 72 -format HEIC *.png); done
  magick mogrify -resize 2560x2560 -quality 85 -density 72 -format HEIC *.HEIC
  magick mogrify -resize 2560x2560 -quality 85 -density 72 -format HEIC *.heic
  magick mogrify -resize 2560x2560 -quality 85 -density 72 -format HEIC *.JPEG
  magick mogrify -resize 2560x2560 -quality 85 -density 72 -format HEIC *.jpeg
  magick mogrify -resize 2560x2560 -quality 85 -density 72 -format HEIC *.JPG
  magick mogrify -resize 2560x2560 -quality 85 -density 72 -format HEIC *.jpg
  magick mogrify -resize 2560x2560 -quality 85 -density 72 -format HEIC *.PNG
  magick mogrify -resize 2560x2560 -quality 85 -density 72 -format HEIC *.png
fi
