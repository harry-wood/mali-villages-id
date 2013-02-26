#!/bin/sh
# Upload app config and code (but not task data)
#
# It would be too slow to update task data via createTasks.py, since we have so many tasks.
# Instead, use the web interface to upload the "tasks" file.

test -n "$1" || { echo >&2 "Usage: $0 <crowdcrafting.org API_KEY key>"; exit 2; }
python ./createTasks.py -s http://crowdcrafting.org -k "$1" -t template.html -c /dev/null -u
