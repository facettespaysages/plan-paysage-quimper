# How to convert and compress images
## Convert to jpg :
```shell script
cd assets/images
magick image.png baie-kerogan.jpg
```

### Compress jpg : 
```shell script
cd assets/images
magick baie-kerogan.jpg -strip -interlace Plane -gaussian-blur 0.05 -quality 85% baie-kerogan.jpg
```

### Resize jpg :
```shell script
cd assets/images
convert baie-kerogan.jpg -resize 50% baie-kerogan.jpg
```

## Create thumbnails :
```shell script
cd assets/images
mogrify  -format jpg -path thumbnails -thumbnail 600x600 *.jpg
mogrify  -format png -path thumbnails -thumbnail 150x150 *.png
mogrify  -format jpg -path thumbnails/projets -thumbnail 600x600 projets/*.jpg
mogrify  -format jpg -path thumbnails/home -thumbnail 1500x1500 home/*.jpg
mogrify  -format jpg -path thumbnails/partenaires -thumbnail 400x400 partenaires/*.jpg
mogrify  -format jpg -path thumbnails/actualites -thumbnail 400x400 actualites/*.jpg
```

## Create webp versions

```
apt install webp parallel
find . | egrep '.jpeg|.jpg|.tiff|.tif|.png' | parallel --progress 'cwebp -quiet -af {} -o {.}.webp'

find ./ -type f -name '*.jpg' -exec sh -c 'cwebp -q 75 $1 -o "${1%.jpg}.webp"' _ {} \;

```

