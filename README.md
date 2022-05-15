# Shell scripts for every day usage on Mac
After main file execution, it will be created a symlink for each script allowing to run each command via shortcut. 


## Usage
```shell
# install
$ _create_sym_links.sh

# uninstall / remove symlinks
$ _create_sym_links.sh uninstall

# or

$ _create_sym_links.sh remove
```

### Calculator instance
Run new instance of Calculator app
```shell
$ calc
```

### flushdns
Flush DNS Server Cache
```shell
$ flushdns
```

### PyCharm
Run PyCharm within a given directory path
```shell
$ pycharm <path>
```

### PhpStorm
Run PhpStorm within a given directory path
```shell
$ pstorm <path>
```

### Sizeof path
Alternative of `du -h --max-depth=1` to get the size of all the directories (and files) within a given directory path
```shell
# display sizes of dirs in a current directory
$ sizeof

# display sizes of dirs in a specified directory
$ sizeof <path>

# display sizes of dirs in a specified directory
$ sizeof <path> d

# display sizes of files in a specified directory
$ sizeof <path> f

# display sizes of files/dirs in a specified directory
$ sizeof <path> a
# or
$ sizeof <path> all
```

### aliases
```shell
# sail
sail  = ./vendor/bin/sail
saila = ./vendor/bin/sail artisan

# git
$ gs    = git status
$ gac   = git add . && git commit
$ glogo = git log --oneline --graph
$ glogs = git log --stat --graph
```

### Delete .DS_Store (or any) files recursively
```shell

# Deletes .DS_Store files recursively in the current directory
$ del_files

# Deletes .DS_Store files recursively in a specified directory
$ del_files <path>

# Deletes 'name' matched files recursively in a specified directory
$ del_files <path> <files_match_name>

```