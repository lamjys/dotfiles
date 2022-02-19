# youtude-dl bash command - audio
# first argument as url
youtube-dl \
    --audio-format flac \
    --add-metadata \
    --extract-audio \
    --ignore-errors \
    --output '${HOME}/Downloads/%(title)s.%(ext)s' \
    $1
