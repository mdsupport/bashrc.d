# bashrc.d
Perform scripts upon each start of new session.

## Common uses
- Add favorite alias' for frequently used commands
- Load ssh identity
- Execute specific scripts for taking backups

## Installation
Each user can perform the following steps
```
cd ~
git clone https://github.com/mdsupport/bashrc.d.git .bashrc.d
cd .bashrc.d
chmod u+x install
./install
bash
```

## Configuration
Install script modifies `.bashrc` to execute `.bash` files in `.bashrc.d` directory.
