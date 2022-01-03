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
