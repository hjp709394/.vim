#!/bin/sh
#generate tag file for lookupfile plugin
#Used by lookupfile plugin of vim
#format:
# file_name\tfile_full_path\t1

echo -e "!_TAG_FILE_SORTED\t2\t/2=foldcase/" > "$2"
find -L $1 -type f -not -path '*/.git/*' -not -name '*.obj' -not -name '*.exe' -not -name '*.dll' -not -name '*.lib' -not -name '*.so' -not -name '*~' -not -name '*.swp' -not -name '*.swo' | sed "s:\(.*\)/\([^/]*\):\2 \1/\2 1:g" | awk '{print $1"\t"$2"\t"$3}' | sort -f >> "$2"
