# Project Requirements Document (PRD)

## Basic Requirements

- Create two Bash programs running concurrently.
- The first program runs every 10 seconds and writes the current time to a file named `time.log`.
- The second program runs every 7 seconds, reads, and prints the last line from `time.log`.
- Both programs and the log file operate in the same directory.
- Proper permissions must be set: execution permission for the programs, and read/write permissions for the log file.
- Each program must be stoppable independently with convenient control.
- Programs must be capable of running in the background (background jobs).
- Provide clear documentation including a specification document, detailed tasks, and a JSON example.

## Permissions Explanation

- Script files must have executable permissions.
- The log file must have read and write permissions.
- Permissions depend on Linux file system permissions, not on file extensions.

## Task Breakdown

1. Write `writer.sh` script to write the current time to the log file every 10 seconds within an infinite loop.
2. Write `reader.sh` script to read and print the last line from the log file every 7 seconds within an infinite loop.
3. Set executable permissions on scripts using `chmod`.
4. Test running scripts in separate terminals.
5. Document how to run scripts in the background and how to stop them safely.
6. Prepare a clear specification document describing the task.
7. Prepare a task breakdown document.
8. Create a JSON file describing the tasks in a hierarchical format.
9. Write a README file with detailed instructions.
10. Upload the project to a repository named `ASSIGNMENT2`.
