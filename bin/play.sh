#!/bin/bash
# usage: ./play (long|hourly)

shopt -s nullglob
trackdir=~/rhythmbox/sounds/$1
tracks=("$trackdir"/*)
echo "${#tracks[@]}" tracks in "$trackdir"
echo "${tracks[@]}"
echo 

track_no=$(( $RANDOM % "${#tracks[@]}" ))
echo playing ${tracks["$track_no"]}

play ${tracks[$track_no]}
echo done
