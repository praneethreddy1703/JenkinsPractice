#!/bin/bash

jobName="$1"
tokenName="$2"

#firefox http://localhost:8080/job/myFirstJob/build?token=$tokenName
echo $jobName
echo $tokenName

if [ "$1" == "-usage" ] 
then
	echo "./remoteBuildforJenkinsFirstJob <jobName> <passphrase>"
	echo "<jobName> -----> job  name in Jenkins"
	echo "<passphrase> -----> token name for the job remote build"
	exit
elif [ "$1" == "-help" ] 
then
	echo "enter ./remoteBuildforJenkinsFirstJob -usage for usage"
	exit
elif [ $# != 2 ] 
then
	echo "Error: See usage"
	./remoteBuildforJenkinsFirstJob.sh -usage 
    exit
else
	firefox http://localhost:8080/job/$jobName/build?token=$tokenName
fi

