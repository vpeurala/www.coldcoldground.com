cp ~/Dropbox/ColdColdGround/KEIKKAKUVAT/* .

rename 's/IMG_([0-9]*)_PHOTO_BY_JERE_LAUHA/\1_Photo_by_Jere_Lauha/g' *LAUHA.jpg

rename 's/\.JPG/.jpg2/g' *.JPG

rename 's/\.jpg2/.jpg/g' *.jpg2

for FILE in $(ls *.jpg); do convert $FILE -resize 640x640 ${FILE}_box.jpg; convert $FILE -thumbnail 200x200 ${FILE}_thumb.jpg; done

for FILE in $(ls | egrep -v "box|thumb"); do echo "<a href=\"photos/live/${FILE}_box.jpg\" rel=\"lightbox\" title=\"Photo by "$(echo $FILE | sed 's/.*[Bb]y_\(.*\)\.jpg/\1/g' | sed 's/_/ /g')"\"> <img src=\"photos/live/${FILE}_thumb.jpg\" alt=\"Photo by "$(echo $FILE | sed 's/.*[Bb]y_\(.*\)\.jpg/\1/g' | sed 's/_/ /g')"\"> </a>"; done > list.html

