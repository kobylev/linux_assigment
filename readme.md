# Assignment 2 - Time Logging Scripts

## Overview

This project includes two Bash scripts for logging and reading time stamps in Linux or WSL:

- `WriteToLog.sh`: Appends the current date and time to the log file `log.txt` every 10 seconds.
- `ReadFromLog.sh`: Reads and prints the last line from the same log file every 7 seconds.

## Usage

1. Set executable permissions:

chmod +x WriteToLog.sh ReadFromLog.sh


2. Run each script in separate terminal windows:
    * Terminal 1: ./WriteToLog.sh
    * Terminal 2: ./ReadFromLog.sh

3. To run scripts in the background: 
    * /WriteToLog.sh & ./ReadFromLog.sh &

    
## Notes
- Both scripts must run in the seprated folders.
- The log file `log.txt` is created automatically.
- `ReadFromLog.sh` prints the last line even if unchanged.


