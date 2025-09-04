
#!/bin/bash

logfile="../log.txt"

while true; do
    if [ -f "$logfile" ]; then
        last_line=$(
            flock -s 200 tail -n 1 "$logfile"
        ) 200>"$logfile.lock"

        echo -e "Last line in the log: $last_line"
    else
        echo "Log file does not exist yet."
    fi

    sleep 10
done
