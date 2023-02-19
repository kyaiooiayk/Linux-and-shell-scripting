
# MacOS-specific
- Package management with brew (Homebrew) and/or port (MacPorts). These can be used to install on MacOS many of the above commands.
- Be aware MacOS is based on BSD Unix, and many commands (for example ps, ls, tail, awk, sed) have many subtle variations from Linux, which is largely influenced by System V-style Unix and GNU tools.
***

## How to install Brew:
- [If you have sudo rights](https://brew.sh/): `/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"`
- [If you do NOT have sudo rights](https://superuser.com/questions/619498/can-i-install-homebrew-without-sudo-privileges)
***

## How to install htop
- To install run [Ref](https://www.cyberciti.biz/faq/install-htop-on-macos-unix-desktop-running-macbook-pro/): `brew install htop`
***

## How to add paths to $PATH
- Let's assume we want to add this path: `/opt/bin` to the `$PATH`: `export PATH=$PATH:~/opt/bin`
- To inspect what paths use: `echo $PATH`
***

## Creating a bash_profile
- Open the terminal.
- Move the home directory using the following command: `cd ~/`
- Use the touch command to create the bash_profile as follows: `touch .bash_profile`
- To edit the `.bash_profile` inside the termine: `vi ~/.bash_profile`
***

## Python Subprocess: Too Many Open Files
- See current configuration with: `ulimit -a`
- Increase the limit to 10000: `ulimit -Sn 10000` or (not suggested): `ulimit -Sn unlimited`
***
