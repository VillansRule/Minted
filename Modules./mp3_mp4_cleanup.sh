#!/bin/bash
# mp3_mp4_cleanup.sh

# Initialize arrays for found MP3 and MP4 files
mp3finds=()
mp4finds=()

# Find all .mp3 and .mp4 files in /home directory
mp3finds=$(find /home -name "*.mp3")
mp4finds=$(find /home -name "*.mp4")

# Display the prohibited files found
echo "These prohibited MP3 files are on your system:"
echo "$mp3finds"
echo
echo "These prohibited MP4 files are on your system:"
echo "$mp4finds"
echo
read -p "Press [ENTER] key to continue" fakeenter

# Iterate over each found MP3 file and ask if the user wants to remove it
for mp3find in $mp3finds; do
    clear
    echo "Do you want to remove this MP3 file?"
    echo "$mp3find"
    read -p "[y/n]> " yn
    case $yn in
        y|Y) 
            rm "$mp3find"
            echo "$mp3find removed."
            ;;
        n|N)
            echo "$mp3find kept."
            ;;
        *)
            echo "Invalid input, skipping $mp3find."
            ;;
    esac
done

# Iterate over each found MP4 file and ask if the user wants to remove it
for mp4find in $mp4finds; do
    clear
    echo "Do you want to remove this MP4 file?"
    echo "$mp4find"
    read -p "[y/n]> " yn
    case $yn in
        y|Y) 
            rm "$mp4find"
            echo "$mp4find removed."
            ;;
        n|N)
            echo "$mp4find kept."
            ;;
        *)
            echo "Invalid input, skipping $mp4find."
            ;;
    esac
done

# Final prompt before exiting
read -p "Press [ENTER] key to continue" fakeenter
