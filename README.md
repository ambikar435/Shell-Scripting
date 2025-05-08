# Shell-Scripting
Shell scripting for Devops

- **set -x:**
  The command "set -x" in a bash shell enables a debugging mode where each command and its argumnets are printed to the terminal
- **df -h:**
  The df -h command in Linux/Unix is used to display disk space usage of your file systems in a human-readable format.
  -df = Disk free
  -h Human readable  (shows sizes in KB, MB, GB instead of just bytes)
- **free -g:**  This command shows your system's memory usage, but the -g flag formats the output in gigabytes.
- **nproc:** This command displays the number of processing units (CPU cores) available to the current process.
- **ps -ef:** List all the process running
- **ps -ef | grep "python3" | awk -F " " '{print $2}':** grep the process id of the particular process name,  (-F " ")in the " " (space) is the field separater 

## curl 
- **curl url:**: This command will fetch the content of url and print it in terminal we can save that to file also using "curl url -o logfile.txt"
- **curl url | grep "error":** directly fecth the data ("error") from the uel and print the terminal similarly we have ("wget") wget will first doemload the file to locak system later grep the data.

## find
 locating files and directories in Linux
 - **SYNTAX:**
 find [path] [options] [experssions]
 * example commands: 
 - **find . :** find all the commands in current directory and subdirectory
 - **find . -name "file.txt" :** fine by name, -name is case sensitive if you want to use case-insensitive use -iname
 - **find . -name "*.sh":** find all the files with a specific extension
 - **find . -mtime -1:** find the file modified less then 1 day ago, if you want to find the file modified or older then 7 days ago, we want to use "-mtime +7"
 
 



  

