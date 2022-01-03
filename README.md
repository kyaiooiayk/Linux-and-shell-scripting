# Linux and shell scripting cheatsheet

## Nomenclature
- **Shell scripting** is a program to run on UNIX shell. 
- **Bash** is a Unix shell and command language. 


## #! bin/bash
- Inside a bash file you need to write this line `#! /bin/bash` so the interpreter knows it is a bash file. 
- To know where your bash is use `which bash` 

## chmod
- Give a bash file (*sh.) persmission to be run 
- `>> chmod +x filename.sh`

## Curl
- The curl command transfers data to or from a network server, using one of the supported protocols (HTTP, HTTPS, FTP, FTPS, SCP, SFTP, TFTP, DICT, TELNET, LDAP or FILE). 
- It is designed to work without user interaction, so it is ideal for use in a shell script. 
- The software offers proxy support, user authentication, FTP uploading, HTTP posting, SSL connections, cookies, file transfer resume, metalink, and other features. 
- `curl [options] [URL...]`

## Conditionals
- To use conditional we start with `if` and to end we use reverse of that condition i.e `fi`. 
- Some other commands are: 
  - `-eq` : To check if two number are equal 
  - `-ne` : To check if two number are not equal 
  - `-gt` : To check if num1 is greater than num2 
  - `-lt` : To check if num1 is less than num2 
  - `-le` : For less than equal to 
 - Let us assume we have file called `if_example.sh` containing this:
```
#! /bin/bash

NAME="XYZ"
if [ $NAME=="XYZ" ]
then
    echo "Name is XYZ"
else
    echo "Name is not XYZ"
fi
```
