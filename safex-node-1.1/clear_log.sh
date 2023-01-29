#!/bin/bash
# community version: 2023.01.28..1
#this will reduce teh log files to free up space

truncate -s 0 /home/**/*.log*
truncate -s 0 /var/**/*.log*
truncate -s 0 /var/**/*btmp*
truncate -s 0 /var/**/*messages*

