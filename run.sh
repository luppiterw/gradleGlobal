#!/usr/bin/env bash

#todo analysis main file path
function runMain()
{
    echo 'runMain => ' + $1;
    echo '********************M - M - M****************************'
    if [ $1 = 1 ]; then
        java -cp entry/build/classes/main apl.EntryMain
    elif [ $1 = 2 ]; then
        java -cp core/build/classes/main coreapl.CoreMain
    else
        java -cp build/classes/main cur.MyMain
    fi
    echo '********************M - M - M****************************'
}

choice=0
if [ $1 = 'entry' ]; then
    echo 'entry'
    choice=1
elif [ $1 = 'core' ]; then
    echo 'core'
    choice=2
else
    echo 'default'
fi

runMain ${choice}
