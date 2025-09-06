# ReadFromLog.sh

## Description

This script reads the last line from a shared log file (`log.txt`) every 10 seconds and prints it to the console prepended with "Last line in the log:". It safely locks the file during reading to avoid reading while the file is being written. If the log file doesn’t exist yet, it notifies the user.

## Features

- Reads the last log entry in `log.txt`.
- Uses shared file locking with `flock` to avoid read-write conflicts.
- Gracefully handles missing log file.

## Usage

Make executable and run:
chmod +x ReadFromLog.sh
./ReadFromLog.sh

---

## Reverse Engineering

### Purpose

- Continuously monitors and outputs the most recent timestamp entry every 10 seconds.
- Ensures safe read operations with shared locks, avoiding clashes with writing process.
- Provides user feedback if the log file is unavailable.

### Core Logic

- Checks existence of `log.txt`.
- Uses `flock -s` for shared locking on a lock file.
- Reads the last line using `tail -n 1`.
- Prints the last line with context to the console.
- Sleeps 10 seconds between reads and loops indefinitely.

---

## License

MIT License
