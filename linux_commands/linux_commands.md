
## Linux commands

**chmod**
- Give a bash file (*sh.) persmission to be run 
- `>> chmod +x filename.sh`

**Curl**
- The curl command transfers data to or from a network server, using one of the supported protocols (HTTP, HTTPS, FTP, FTPS, SCP, SFTP, TFTP, DICT, TELNET, LDAP or FILE). 
- It is designed to work without user interaction, so it is ideal for use in a shell script. 
- The software offers proxy support, user authentication, FTP uploading, HTTP posting, SSL connections, cookies, file transfer resume, metalink, and other features. 
- `curl [options] [URL...]`
[Ref](https://www.computerhope.com/unix/curl.htm) 

**echo**
- Print text on console
- `>>echo "Hello world!"`

**history**
- Print the last 1,000 command line history 
- `>>history`
- Search in the command history for command lines that contain the word `docker` 
- `>>history | grep docker`

**which and type**
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
$ which  cd
cd is a shell builtin
cd is /usr/bin/cd
cd is /bin/cd
```

**Folders**
- List only directories: `>>!ls -d */`
- List all files in a folder in a long list format: `>>ls -l`
- Count all the elements inside a folder: `ls ./local_path | wc -l`

**touch**
- The touch command is a standard command used in UNIX/Linux operating system which is used to create, change and modify timestamps of a file. Basically, there are two different commands to create a file in the Linux system which is as follows:
  - `cat` command: it is used to create the file with content.
  - `touch` command: it is used to create a file without any content. The file created using touch command is empty. This command can be used when the user doesn’t have data to store at the time of file creation.

**screen**
- To start a screen session: `screen`
- To detach the session while keeping what you sent in the background: `ctrl+a+d`
- To resume what you were doing: `screen -r <process ID>	`. If it throws an error try: `screen -rd <process ID>	`
- List all the screen sessionts: `screen -ls`
- Kill the process with: `skill <pid>`

**fg & bg**
- The `fg` command, short for the `foreground`, is a command that moves a background process on your current Linux shell (meaning the foreground). 
- This `bg` command, short for `background`, that sends a process running in the foreground (meaning the current Linux shell) to the background.

**ps**
- `ps` command is used to list the currently running processes and their PIDs along with some other information depends on different options.
- Get the pid of a process if you know the applciation name: `ps aux | grep 'freemind'`
