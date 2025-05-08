#!/bin/bash

set -x #debug mode
set -e #exit the script when there is an error
set -o pipefail # set -e command will exit only if the last executed command has error, example: cmd1 | cmd2 | cmd3 if cmd1 and cmd2 fails and cmd3 is passed then you will not exit from the script to check all the commands error codes we wnt to use "set -o pipefail"

#set -exo pipefail execute all the above 3 commands # this is not recommended  

df -h

free -g

nproc

ps -ef | grep "python3"


