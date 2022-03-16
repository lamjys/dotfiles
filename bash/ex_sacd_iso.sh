#!/bin/bash
echo "$NAUTILUS_SCRIPT_SELECTED_FILE_PATHS" | while read fullfile; do
    if [ -z "$fullfile"]
    then
        :
    else
        filename=$(basename -- "$fullfile")
        extension="${filename##*.}"
        if [ "${extension,,}" = "iso" ]; then
            zenity --info --text="$fullfile"
            sacd_extract -2 -s -C -i "$fullfile"
        fi
    fi
done

