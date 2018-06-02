#!/bin/sh
#generate tag file for lookupfile plugin
#Used by lookupfile plugin of vim

#echo -e "!_TAG_FILE_SORTED\t2\t/2=foldcase/" > filenametags
#find . -type f -printf "%f\t%p\t1\n" \
    #| sort -f >> filenametags

echo -e "!_TAG_FILE_SORTED\t2\t/2=foldcase/" > "$2"
find -L $1 -type f -not -path '*/.git/*' -not -name '*.obj' -not -name '*.exe' -not -name '*.dll' -not -name '*.lib' -not -name '*.so' -not -name '*~' -not -name '*.swp' -not -name '*.swo' | sed "s:\(.*\)/\([^/]*\):\2 \1/\2 1:g" | awk '{print $1"\t"$2"\t"$3}' | sort -f >> "$2"
