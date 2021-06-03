#!/bin/sh

PASSWORD=ENTER YOUR PASS HERE
num=235 #host end ip number
host=192.168.195.${num} #subnet ip
	[ ! -d ~/PiBlast ] 
	localpath=~/PiBlast/
	remotepath="${host}:/usr/local/bin"
	#echo $remotepath
	sudo rsync -avz --rsh="sshpass -p ${PASSWORD} ssh -l USER -oStrictHostKeyChecking=accept-new" "$localpath" "$remotepath"


