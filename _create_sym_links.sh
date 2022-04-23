#!/bin/sh

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
fi
