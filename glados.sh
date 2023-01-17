#!/bin/bash
### simple bash tts using api at glados.c-net.org

# api call to get generated audio file
function get_tts() {
    curl -L --retry 3 --get --fail --data-urlencode "text=$1" -o $2.wav "https://glados.c-net.org/generate"
}

# input var
TEXT=$1
echo "Genetic Lifeform and Disk Operating System"

# check if user inputs a text file or single word
if [[ $TEXT == *.txt ]]
    then
    while IFS= read -r line; do
        get_tts $line $line
    done < $TEXT
 	else
    	read -p "phrase to speak : " LINE
    	read -p "output filename > " FILE
    	get_tts "$LINE" $FILE
fi
