#!/bin/bash
port=(`firewall-cmd --zone=public --list-ports`)
sshport=`firewall-cmd --zone=public --list-ports | grep 22/tcp`
echo "Open port : ${port[@]}"


if [ -z "${sshport}" ]
then
	echo "SSH port is disabled"
else
	echo "SSH port is open"
fi

for (( i=0; i<${#port[@]}; i++ ))
do
if [ "${port[$i]}" == "22/tcp" ]
then
	echo "SSH Port is open"
else
	firewall-cmd --zone=public --remove-port=${port[$i]}
        echo "Port ${port[$i]} has been closed"
fi
done
