```
magick convert logo.png -define icon:auto-resize="256,128,96,64,48,32,16" favicon.ico

magick convert logo.png -alpha off -resize 256x256 \
          -define icon:auto-resize="256,128,96,64,48,32,16" \
          favicon.ico
```
