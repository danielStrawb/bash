#!/bin/bash

for wav in ./wav/*.wav; do
    # basename command give us a filename from path. We also could use second parameter to strip extension
    filename=$(basename "$wav" .wav);
    # Using ffmpeg to convert wav files to flac, mp3 and ogg without any console output
    ffmpeg -i "./wav/${filename}.wav" "./mp3/${filename}.mp3" "./ogg/${filename}.ogg" "./flac/${filename}.flac" -loglevel 'quiet' -y
    echo "» $filename";
done
