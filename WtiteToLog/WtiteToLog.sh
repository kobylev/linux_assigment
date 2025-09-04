#!/bin/bash

logfile="../log.txt"
dots=""

while true; do
    # Write current datetime in desired format
    date +"%H:%M:%S %d/%m/%Y" >> "$logfile"
    
    dots="${dots}."
    if [ ${#dots} -gt 6 ]; then
        dots="."
    fi

    echo -ne "Write to Log$dots\r"
    
    sleep 7
done
