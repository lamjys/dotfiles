for i in *.webp ; do convert $i -quality 100 ${i/webp/png} ; done
