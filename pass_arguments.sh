#!/usr/bin/bash
# the arguments we pass to the script is scroed in the sequest from 0 to ... below is the example

echo $0 $1 $2 $3
#is used to print command-line arguments passed to a Bash script.
# $0 → The name of the script itself.
#$1, $2, $3 → The first, second, and third arguments passed to the script when it's run.

#All arguments as separate words [file name is not included]
echo "------------All arguments as separate words-------------"
echo $@

#All arguments as a single word.
echo "--------------All arguments as a single word.---------------"
echo $*

# Number of arguments passed.
echo "--------------Number of arguments passed..---------------"
echo $#

# "$@" → Preserves arguments with spaces (recommended in scripts).
echo "----------------→ Preserves arguments with spaces (recommended in scripts).-----------"
echo "$@"
