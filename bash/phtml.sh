#!/bin/env bash
# phtml - preview document as html in browser

inputfile="$1"
shift
tempfile="${HOME}/Downloads/tmp-md-html.html"
pandoc "$@" -t html5 -o "$tempfile" "$inputfile"
xdg-open "$tempfile" 2>/dev/null
sleep 10
rm -f "$tempfile"
