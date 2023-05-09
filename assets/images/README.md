# How to convert and compress images
Convert to jpg :
```shell script
cd assets/images
magick image.png image.jpg
```

Compress jpg
```shell script
convert image.jpg -sampling-factor 4:2:0 -strip -quality 85 -interlace JPEG -colorspace RGB image_converted.jpg
```
OR
```shell script
magick image.jpg -strip -interlace Plane -gaussian-blur 0.05 -quality 85% image.jpg
```

Create thumbnails :
```shell script
cd assets/images
mogrify  -format gif -path thumbs -thumbnail 320x320 *.jpg
```
