
# Linux commands

## `alias`
Create shortcuts for your most frequently used command by creating aliases. It requires a
shortcut name and command as a string. You will print “I love KDnuggets” by typing love in the terminal.
`$ alias love="echo 'I love GitHub!'"`
***

## `source` vs `export`
- `source some_script.sh`, or the POSIX-compliant equivalent, `. some_script.sh`, brings variables **in** from other scripts. Something similar is done in python with `import some_module` in Python, or `#include <some_header_file.h>` in C or C++.
- `export my_var="something"` pushes variables **out** to other scripts/processes which are called/started from the current script/process. Using export some_var="something" is kind of like setting that variable locally, so it is available for the rest of the current script or process, and then also passing it in to any and all sub-scripts or processes you may call from this point onward.

[Ref](https://stackoverflow.com/questions/15474650/unix-what-is-the-difference-between-source-and-export)
***

## `chmod`
- Give a bash file (*sh.) persmission to be run: `$ chmod +x filename.sh`
***

## `curl`
- cURL stands for client URL.
- The curl command transfers data to or from a network server, using one of the supported protocols (HTTP, HTTPS, FTP, FTPS, SCP, SFTP, TFTP, DICT, TELNET, LDAP or FILE). 
- It is designed to work without user interaction, so it is ideal for use in a shell script. 
- The software offers proxy support, user authentication, FTP uploading, HTTP posting, SSL connections, cookies, file transfer resume, metalink, and other features. 
- `curl [options] [URL...]`
- Checks the version of cURL you have installed on your system: `curl --version`
- [Ref](https://www.computerhope.com/unix/curl.htm) 
***

## `echo`
- Print text on console: `$ echo "Hello world!"`
***

## `grep`
It is used to find data within the file. 
- Given a text pattern, find all the lines containing that pattern: `$ grep -i "vir" file.csv`

## `history`
- Print the last 1,000 command line history 
- `>>history`
- Search in the command history for command lines that contain the word `docker` 
- `>>history | grep docker`
***

## `man`
Learn about any Linux commands or tools by using the man command and the tool name. The man stands for manual: `$ man echo`
***

## `which` and `type`
- `which` shows the full path of (shell) commands. Its output is different based on different systems. [Ref](https://unix.stackexchange.com/questions/476951/what-differences-between-type-cd-and-which-cd-commands-in-linux/476955)
```
$ type cd
cd is a shell builtin
```
- `type` display information about command type on Linux. We have 4 command types:
  - Built-in Shell Commands
  - Shell Functions
  - Command Alias
  - excutable Programs 
```
$ which cd
cd is a shell builtin
cd is /usr/bin/cd
cd is /bin/cd
```
***

## Folders
- List only directories: `>>!ls -d */`
- List all files in a folder in a long list format: `>>ls -l`
- Count all the elements inside a folder: `ls ./local_path | wc -l`
***

## `touch`
- The touch command is a standard command used in UNIX/Linux operating system which is used to create, change and modify timestamps of a file. Basically, there are two different commands to create a file in the Linux system which is as follows:
  - `cat` command: it is used to create the file with content.
  - `touch` command: it is used to create a file without any content. The file created using touch command is empty. This command can be used when the user doesn’t have data to store at the time of file creation.
***

## `screen`
- To start a screen session: `screen`
- To detach the session while keeping what you sent in the background: `ctrl+a+d`
- To resume what you were doing: `screen -r <process ID>	`. If it throws an error try: `screen -rd <process ID>	`
- List all the screen sessionts: `screen -ls`
- Kill the process with: `skill <pid>`
***

## `fg` & `bg`
- The `fg` command, short for the `foreground`, is a command that moves a background process on your current Linux shell (meaning the foreground). 
- This `bg` command, short for `background`, that sends a process running in the foreground (meaning the current Linux shell) to the background.
***

## `ps`
- `ps` command is used to list the currently running processes and their PIDs along with some other information depends on different options.
- Get the pid of a process if you know the applciation name: `$ ps aux | grep 'freemind'`
***

## `wc`
Use wc to get information about word count, character count, and the number of lines: `$ wc file.csv`

## References
- https://github.com/jpicerno1/the-art-of-command-line/blob/master/README.md
- https://www.kdnuggets.com/publications/sheets/Linux_for_Data_Science_Cheatsheet_KDnuggets.pdf
