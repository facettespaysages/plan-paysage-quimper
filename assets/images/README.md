# How to convert and compress images
Convert to jpg :
```shell script
cd assets/images
magick contact.png contact.jpg
```

Create thumbnails :
```shell script
cd assets/images
mogrify  -format gif -path thumbs -thumbnail 320x320 *.jpg
```
