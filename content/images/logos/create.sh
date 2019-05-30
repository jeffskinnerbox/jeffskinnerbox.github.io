#!/bin/bash

#
# Convert takes an input file, in some image format, and converts it to a different image format.
# In addition, various types of image processing can be performed on the converted
# image during the conversion process. Convert recognizes the image formats supported
# by ImageMagick.
# 
#     See http://linux.about.com/library/cmd/blcmdl1_ImageMagick.htm
#         http://linux.about.com/od/commands/l/blcmdl1_convert.htm
#

IMAGESRC="."
IMAGEDES="thumbnail"
IMAGESIZE="80x80"

for file in $( ls $IMAGESRC/*.jpg $IMAGESRC/*.png )
do
    convert -size $IMAGESIZE $file -resize $IMAGESIZE +profile '*' $IMAGEDES/$file
done
