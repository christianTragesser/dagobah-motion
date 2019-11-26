#!/bin/bash

for i in $(ls /etc/motion/thread*.conf)
do
  sed -i -e "s/USER_HERE/$CAM_USER/g" -e "s/PASS_HERE/$CAM_PASS/g" $i
done

/usr/bin/motion
