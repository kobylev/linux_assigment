# Project Requirements Document (PRD)

## Project Overview

This project consists of two Bash scripts that run concurrently in a Linux environment (including WSL):

- **writer.sh**: This script runs continuously, appending the current date and time to a log file named `time.log` every 10 seconds.
- **reader.sh**: This script also runs continuously, reading the last line from the same `time.log` file every 7 seconds and printing it to the console.

Both scripts operate within the same directory and demonstrate basic inter-process coordination through file I/O with timing offsets to ensure output interleaving.

## Objectives

- Implement lightweight shell scripts that perform periodic logging and reading.
- Demonstrate familiarity with Unix/Linux terminal, file permissions, background processes, and process management.
- Ensure scripts can be started, run simultaneously, and stopped independently.
- Provide documentation and clear instructions for usage and maintenance.

## Functional Requirements

1. **Logging Script (`writer.sh`)**
   - Runs an infinite loop.
   - Every 10 seconds appends the current timestamp to `time.log`.
   - Creates `time.log` if it does not exist.
   - Has executable permissions.

2. **Reading Script (`reader.sh`)**
   - Runs an infinite loop.
   - Every 7 seconds reads and outputs the last line of `time.log`.
   - Handles the case when `time.log` does not exist gracefully.
   - Has executable permissions.

3. **Execution Environment**
   - Both scripts run within the same folder.
   - Scripts must be runnable under a Linux Terminal or WSL.
   - Scripts should be able to run in separate terminals or in background jobs.

4. **Process Management**
   - Ability to start and stop each script independently.
   - Instructions for managing process IDs and terminating scripts.

## Non-Functional Requirements

- Scripts must be written in portable Bash script syntax.
- Scripts should be robust to missing files and race conditions.
- Documentation must include instructions for permissions (`chmod`), execution, and termination.
- Scripts should be easy to debug and maintain.

## Deliverables

- `writer.sh`
- `reader.sh`
- Documentation files:
  - `README.md`
  - `specification.md` (this PRD)
  - `task_breakdown.md`
  - `tasks.json`

## Usage

Instructions to run the scripts and manage the processes will be provided in the README
