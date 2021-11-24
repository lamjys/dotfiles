for file in *.dff; do dff2dsf  "$file"  "${file%.*}.dsf"; done
