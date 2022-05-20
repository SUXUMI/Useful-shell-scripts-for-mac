#!/bin/sh

ALIAS_FILE_PATH=

# Determine profile file path
if [ -f ~/.zshrc1 ]; then
    ALIAS_FILE_PATH=~/.zshrc
elif [ -f ~/.zprofile ]; then
    ALIAS_FILE_PATH=~/.zprofile
elif [ -f ~/.bash_profile ]; then
    ALIAS_FILE_PATH=~/.bash_profile
else
    touch ~/.zshrc
    ALIAS_FILE_PATH=~/.zshrc
fi

echo "Profile file path: $ALIAS_FILE_PATH"


# echo "Current directory path is:" $(pwd)

if [[ $1 = "uninstall"  || $1 = "remove" ]]
then
    rm -f /usr/local/bin/sizeof
    rm -f /usr/local/bin/pstorm
    rm -f /usr/local/bin/pcharm
    rm -f /usr/local/bin/calc
    rm -f /usr/local/bin/flushdns
    echo 'symliks removed'
else
    echo "Creating a symlink for sizeof.     e.g.: sizeof ."
    ln -f -s $(pwd)/sizeof /usr/local/bin/sizeof

    echo "Creating a symlink for PhpStorm.   e.g.: pstorm ."
    ln -f -s $(pwd)/pstorm /usr/local/bin/pstorm

    echo "Creating a symlink for PyCharm.    e.g.: pcharm ."
    ln -f -s $(pwd)/pcharm /usr/local/bin/pcharm

    echo "Creating a symlink for Calculator. e.g.: calc"
    ln -f -s $(pwd)/calc /usr/local/bin/calc

    echo "Creating a symlink for flushdns.   e.g.: flushdns"
    ln -f -s $(pwd)/flushdns /usr/local/bin/flushdns

    echo "Creating a symlink for del_files.  e.g.: del_files"
    ln -f -s $(pwd)/del_files /usr/local/bin/del_files
fi


# there are many issues, 
# if use #!/bin/sh  --> `$(type -t sail)` 
#     --> returns nothing as "Aliases are not expanded when the shell is not interactive"

# if use #!/bin/zsh --> `type -t` 
#     --> error: `bad option: -t`
#     https://unix.stackexchange.com/a/1498/514330

if [ -f $ALIAS_FILE_PATH ]
then
    # sail aliases
    if [ "$(cat $ALIAS_FILE_PATH | grep "^alias sail=")" = "" ]
    then
        echo "Creating sail's aliases.."
        echo >> $ALIAS_FILE_PATH "alias sail='./vendor/bin/sail'"
        echo >> $ALIAS_FILE_PATH "alias saila='./vendor/bin/sail artisan'"
    fi

    # git aliases
    # actually some git shortcuts already exists 🤔
    # like: ga, gc, gl, gp
    # gs = `git status`
    shortcut='gs'
    cmd='git status'
    if [ "$(cat $ALIAS_FILE_PATH | grep "^alias $shortcut=")" = "" ]; then
        echo "Creating alias for: $shortcut = $cmd"
        echo >> $ALIAS_FILE_PATH "alias $shortcut='$cmd'"
    fi

    # glogo = `git log --oneline`
    shortcut='glogo'
    cmd='git log --oneline --graph'
    if [ "$(cat $ALIAS_FILE_PATH | grep "^alias $shortcut=")" = "" ]; then
        echo "Creating alias for: $shortcut = $cmd"
        echo >> $ALIAS_FILE_PATH "alias $shortcut='$cmd'"
    fi

    # glogs = `git log --stat --graph`
    shortcut='glogs'
    cmd='git log --stat --graph'
    if [ "$(cat $ALIAS_FILE_PATH | grep "^alias $shortcut=")" = "" ]; then
        echo "Creating alias for: $shortcut = $cmd"
        echo >> $ALIAS_FILE_PATH "alias $shortcut='$cmd'"
    fi

    # glogs = `git add . && git commit -m`
    shortcut='gac'
    cmd='git add . && git commit'
    if [ "$(cat $ALIAS_FILE_PATH | grep "^alias $shortcut=")" = "" ]; then
        echo "Creating alias for: $shortcut = $cmd"
        echo >> $ALIAS_FILE_PATH "alias $shortcut='$cmd'"
    fi

    # gls = `git submodule update --init --recursive`
    shortcut='gls'
    cmd='git submodule update --init --recursive'
    if [ "$(cat $ALIAS_FILE_PATH | grep "^alias $shortcut=")" = "" ]; then
        echo "Creating alias for: $shortcut = $cmd"
        echo >> $ALIAS_FILE_PATH "alias $shortcut='$cmd'"
    fi
fi

# source $ALIAS_FILE_PATH
