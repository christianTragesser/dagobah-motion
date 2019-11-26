#!/bin/bash

BEFORE="$(du -h --max-depth=1 /var/lib/motion | tail -1 | awk '{print $1}')"
echo -e "Intializing expired file clean up....\n"
echo -e "Current /var/lib/motion size: $BEFORE"

find /var/lib/motion -name '*.avi' -type f -mtime +30 -exec rm {} \;
find /var/lib/motion -name '*.avi' -type f -size -300k -exec rm {} \;

echo -e "Clean up complete. \n"

AFTER="$(du -h --max-depth=1 /var/lib/motion | tail -1 | awk '{print $1}')"
echo -e "Persisted /var/lib/motion size: $AFTER"
