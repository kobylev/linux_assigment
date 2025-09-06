# WritetoLog.sh

## Description

This script writes the current date and time to a log file (`log.txt`) every 7 seconds. While running, it displays "Write to Log" followed by accumulating dots (up to six) to indicate ongoing activity. It uses file locking to ensure safe concurrent access with other scripts reading the log.

## Features

- Writes timestamp in format: `HH:mm:ss dd/MM/yyyy`.
- Shows progress display on the same terminal line.
- Uses exclusive file locking with `flock` to prevent race conditions.

## Usage

Make executable and run:
chmod +x WritetoLog.sh
./WritetoLog.sh

---

## Reverse Engineering

### Purpose

- Continuously appends the current timestamp to `log.txt` every 7 seconds.
- Provides visual feedback with "Write to Log" and accumulating dots.
- Implements file locking to synchronize with readers and prevent concurrent write-read collisions.

### Core Logic

- Runs an infinite loop writing the time.
- Uses `date` command with format `%H:%M:%S %d/%m/%Y`.
- Applies an exclusive lock with `flock -x` on a dedicated lock file before writing to `log.txt`.
- Updates and displays dots incrementally with each write.
- Sleeps 7 seconds between writes and repeats.

---

## License

MIT License
