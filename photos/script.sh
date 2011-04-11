for FILE in $(ls *.jpg); do convert $FILE -resize 640x640 ${FILE}_box.jpg; convert $FILE -thumbnail 250x250 ${FILE}_thumb.jpg; done
