#!/bin/bash
ps_out=`ps -ef | grep $1 | grep -v 'grep' | grep -v $0`
result=$(echo $ps_out | grep "$1")
if [[ "$result" != "" ]];then
    echo "Running"
else
    echo "Not Running"
fi




20:10 $ checkRunningProcess.sh proxy.py
Running
20:12 $ checkRunningProcess.sh abcdef
Not Running
