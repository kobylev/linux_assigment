# Logging and Reading Timestamp Scripts

This repository contains two bash scripts designed for simple logging and real-time reading of timestamps from a shared log file.

## Scripts Overview

### 1. `WritetoLog.sh`
- Writes the current date and time to `log.txt` every 7 seconds.
- Displays on the terminal the message **"Write to Log"** with accumulating dots (e.g., `Write to Log.`, `Write to Log..`) to indicate progress.
- Ensures safe writing using file locking, preventing conflicts when reading concurrently.

### 2. `ReadFromLog.sh`
- Reads the latest line from `log.txt` every 10 seconds.
- Prints the message **"Last line in the log:"** followed by the most recent logged timestamp.
- Uses file locking to wait if the log file is currently being written to by the writer script, ensuring consistent reads.

## Usage

1. Run `WritetoLog.sh` in one terminal to begin logging timestamps.
2. Run `ReadFromLog.sh` in another terminal to monitor the most recent entry in real-time.
3. Both scripts run indefinitely until manually stopped (`Ctrl+C`).

## Log File Format

- The timestamps are logged in the following format:
