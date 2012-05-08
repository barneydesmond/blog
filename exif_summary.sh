#!/bin/bash

# Print a one-line summary of EXIF data, suitable for captioning photos, hover-text, etc.
# It's quite dumb, only really intended for interactive occasional use.


# Eg.  img/full/DS8_0881.jpg
FILE=$1

if [ $# -ne 1 ] ; then
	echo "Require one filename as an argument"
	exit 2
fi

if [ ! -f $FILE ] ; then
	echo "No such file $FILE"
	exit 2
fi

# I think only Nikon records this
#FOCALLEN=$(exif --tag=FocalLengthIn35mmFilm --machine-readable "$FILE")
FOCALLEN=$(exif --tag=FocalLength --machine-readable "$FILE")
APERTURE=$(exif --tag=FNumber --machine-readable "$FILE")
SHUTTER=$(exif  --tag=ExposureTime --machine-readable "$FILE")
ISO=$(exif      --tag=ISOSpeedRatings --machine-readable "$FILE")
MODEL=$(exif    --tag=Model --machine-readable "$FILE")

echo "${SHUTTER} at ${APERTURE}, ISO ${ISO}, ${FOCALLEN} on ${MODEL}"
