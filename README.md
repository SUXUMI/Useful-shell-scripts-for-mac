# Shell scripts for every day usage on Mac
After main file execution, it will be created a symlink for each script allowing to run each command via shortcut. 


## Usage
```shell
# install
_create_sym_links.sh

# uninstall / remove symlinks
_create_sym_links.sh uninstall

# or

_create_sym_links.sh remove
```

### calc

Run new instance of Calculator app

### flushdns
Flush DNS Server Cache

### pcharm path
Run PyCharm within a given directory path

### pstorm path
Run PhpStorm within a given directory path

### sizeof path
Alternative of `du -h --max-depth=1` to get the size of all the directories within a given directory path
