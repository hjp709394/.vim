#!/bin/sh
#generate tag file for lookupfile plugin
#Used by lookupfile plugin of vim

#echo -e "!_TAG_FILE_SORTED\t2\t/2=foldcase/" > filenametags
#find . -type f -printf "%f\t%p\t1\n" \
    #| sort -f >> filenametags

echo -e "!_TAG_FILE_SORTED\t2\t/2=foldcase/" > "$2"
find $1 -type f -not -path '*/.git/*' -not -name '*~' -not -name '*.swp' -not -name '*.swo' -printf "%f\t%p\t1\n" | sort -f >> "$2"
