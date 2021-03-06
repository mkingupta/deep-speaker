#!/bin/bash

folder=/Volumes/Transcend/data-set/LibriSpeech

for file in $(find "$folder" -type f -iname "*.flac")
do
    name=$(basename "$file" .flac)
    dir=$(dirname "$file")
    echo ffmpeg -i "$file" "$dir"/"$name".wav
    ffmpeg -i $file $dir/$name.wav
done

find $folder -name "*.flac" -exec rm -f {} \;

# https://unix.stackexchange.com/questions/341436/a-script-to-convert-flac-files-to-wav-is-not-working/341441