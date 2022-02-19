# bash script for youtube-dl - video
# first argument as the URL
youtube-dl \
    --format bestvideo+bestaudio \
    --merge-output-format mp4 \
    --add-metadata \
    --ignore-errors \
    --output '${HOME}/Downloads/%(title)s.%(ext)s' \
    $1
