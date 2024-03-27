#!/bin/bash
echo 'Ce script optimise toutes les images de ce dossier (et les sous dossier) y compris les panoramas.'
echo 'Toutes les photos de ce dossier seront écrasées.'
read -p 'Voulez-vous continuer ? (Oui/non) ' yesno

if ! [[ "$yesno" =~ ^Oui$ ]]
then
    echo "Abandon"
    exit 0
fi

for d in ./*/ ; do (cd "$d" && magick mogrify -resize 2560x2560 -quality 85 -density 150 *.HEIC); done
for d in ./*/ ; do (cd "$d" && magick mogrify -resize 2560x2560 -quality 85 -density 150 *.c); done
for d in ./*/ ; do (cd "$d" && magick mogrify -resize 2560x2560 -quality 85 -density 150 *.JPEG); done
for d in ./*/ ; do (cd "$d" && magick mogrify -resize 2560x2560 -quality 85 -density 150 *.jpeg); done
for d in ./*/ ; do (cd "$d" && magick mogrify -resize 2560x2560 -quality 85 -density 150 *.JPG); done
for d in ./*/ ; do (cd "$d" && magick mogrify -resize 2560x2560 -quality 85 -density 150 *.jpg); done
for d in ./*/ ; do (cd "$d" && magick mogrify -resize 2560x2560 -quality 85 -density 150 *.PNG); done
for d in ./*/ ; do (cd "$d" && magick mogrify -resize 2560x2560 -quality 85 -density 150 *.png); done
magick mogrify -resize 2560x2560 -quality 85 -density 150 *.HEIC
magick mogrify -resize 2560x2560 -quality 85 -density 150 *.heic
magick mogrify -resize 2560x2560 -quality 85 -density 150 *.JPEG
magick mogrify -resize 2560x2560 -quality 85 -density 150 *.jpeg
magick mogrify -resize 2560x2560 -quality 85 -density 150 *.JPG
magick mogrify -resize 2560x2560 -quality 85 -density 150 *.jpg
magick mogrify -resize 2560x2560 -quality 85 -density 150 *.PNG
magick mogrify -resize 2560x2560 -quality 85 -density 150 *.png