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
  for d in ./*/ ; do (cd "$d" && echo "Starting to compress HEIC in $d" && convert -resize 2560x2560 -quality 85 -density 72 *.HEIC); done
  for d in ./*/ ; do (cd "$d" && echo "Starting to compress heic in $d" && convert -resize 2560x2560 -quality 85 -density 72 *.heic); done
  for d in ./*/ ; do (cd "$d" && echo "Starting to compress JPEG in $d" && convert -resize 2560x2560 -quality 85 -density 72 *.JPEG); done
  for d in ./*/ ; do (cd "$d" && echo "Starting to compress jpeg in $d" && convert -resize 2560x2560 -quality 85 -density 72 *.jpeg); done
  for d in ./*/ ; do (cd "$d" && echo "Starting to compress JPG in $d" && convert -resize 2560x2560 -quality 85 -density 72 *.JPG); done
  for d in ./*/ ; do (cd "$d" && echo "Starting to compress jpg in $d" && convert -resize 2560x2560 -quality 85 -density 72 *.jpg); done
  for d in ./*/ ; do (cd "$d" && echo "Starting to compress PNG in $d" && convert -resize 2560x2560 -quality 85 -density 72 *.PNG); done
  for d in ./*/ ; do (cd "$d" && echo "Starting to compress png in $d" && convert -resize 2560x2560 -quality 85 -density 72 *.png); done
  convert -resize 2560x2560 -quality 85 -density 72 *.HEIC
  convert -resize 2560x2560 -quality 85 -density 72 *.heic
  convert -resize 2560x2560 -quality 85 -density 72 *.JPEG
  convert -resize 2560x2560 -quality 85 -density 72 *.jpeg
  convert -resize 2560x2560 -quality 85 -density 72 *.JPG
  convert -resize 2560x2560 -quality 85 -density 72 *.jpg
  convert -resize 2560x2560 -quality 85 -density 72 *.PNG
  convert -resize 2560x2560 -quality 85 -density 72 *.png
else
  for d in ./*/ ; do (cd "$d" && echo "Starting to compress HEIC in $d" && convert -resize 2560x2560 -quality 85 -density 72 -format HEIC *.HEIC); done
  for d in ./*/ ; do (cd "$d" && echo "Starting to compress heic in $d" && convert -resize 2560x2560 -quality 85 -density 72 -format HEIC *.heic); done
  for d in ./*/ ; do (cd "$d" && echo "Starting to compress JPEG in $d" && convert -resize 2560x2560 -quality 85 -density 72 -format HEIC *.JPEG); done
  for d in ./*/ ; do (cd "$d" && echo "Starting to compress jpeg in $d" && convert -resize 2560x2560 -quality 85 -density 72 -format HEIC *.jpeg); done
  for d in ./*/ ; do (cd "$d" && echo "Starting to compress JPG in $d" && convert -resize 2560x2560 -quality 85 -density 72 -format HEIC *.JPG); done
  for d in ./*/ ; do (cd "$d" && echo "Starting to compress jpg in $d" && convert -resize 2560x2560 -quality 85 -density 72 -format HEIC *.jpg); done
  for d in ./*/ ; do (cd "$d" && echo "Starting to compress PNG in $d" && convert -resize 2560x2560 -quality 85 -density 72 -format HEIC *.PNG); done
  for d in ./*/ ; do (cd "$d" && echo "Starting to compress png in $d" && convert -resize 2560x2560 -quality 85 -density 72 -format HEIC *.png); done
  convert -resize 2560x2560 -quality 85 -density 72 -format HEIC *.HEIC
  convert -resize 2560x2560 -quality 85 -density 72 -format HEIC *.heic
  convert -resize 2560x2560 -quality 85 -density 72 -format HEIC *.JPEG
  convert -resize 2560x2560 -quality 85 -density 72 -format HEIC *.jpeg
  convert -resize 2560x2560 -quality 85 -density 72 -format HEIC *.JPG
  convert -resize 2560x2560 -quality 85 -density 72 -format HEIC *.jpg
  convert -resize 2560x2560 -quality 85 -density 72 -format HEIC *.PNG
  convert -resize 2560x2560 -quality 85 -density 72 -format HEIC *.png
fi
