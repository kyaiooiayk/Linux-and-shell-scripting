
## Apple MacBookPro specific

**How to install Brew**:
- [If you have sudo rights](https://brew.sh/): `/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"`
- [If you do NOT have sudo rights](https://superuser.com/questions/619498/can-i-install-homebrew-without-sudo-privileges)

**How to install htop**
- To install run [Ref](https://www.cyberciti.biz/faq/install-htop-on-macos-unix-desktop-running-macbook-pro/): `brew install htop`

**How to add paths to $PATH**
- Let's assume we want to add this path: `/opt/bin` to the `$PATH`: `export PATH=$PATH:~/opt/bin`
- To inspect what paths use: `echo $PATH`

**Creating a bash_profile**
- Open the terminal.
- Move the home directory using the following command: `cd ~/`
- Use the touch command to create the bash_profile as follows: `touch .bash_profile`
- To edit the `.bash_profile` inside the termine: `vi ~/.bash_profile`
