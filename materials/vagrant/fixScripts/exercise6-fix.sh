#!/bin/bash
#add fix to exercise6-fix here
#find host name
HOST=$(/usr/bin/hostname)
if [ $HOST == "server1" ];
then
   REMOTE="server2"
else
   REMOTE="server1"
fi

#check for number of parameters
if [ "$#" -le 1 ];
then
   echo "Illegal number of parameters"
   exit
fi

#get last argument
for i in $@; do :; done

#loop over file list:
for f in "$@"
do
    if [ $f != $i ];
    then
       basef="$(basename $f)"
       #copy file to remote
       /usr/bin/rcp $basef vagrant@$REMOTE:$i$basef
    fi

done
#count number of bytes
wc -c "$@" | awk '{print $1}'

exit