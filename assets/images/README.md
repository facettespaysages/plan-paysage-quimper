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
mogrify  -format gif -path thumbs -thumbnail 320x320 *.jpg
```
