#!/bin/bash

wel_jeff="Welcome to Jeff!!"
wel_jay="Hell  low Jay!! :X"

useradd helix
useradd jay
useradd syndy
useradd jeff

if grep jeff /etc/passwd
then
  echo $wel_jeff
fi 

if grep jay /etc/passwd
then
  echo $wel_jay
fi

if grep http /etc/services | awk '{print $1, $2}' | tail -1
then
  echo "Http Exist"
fi

if grep ssh /etc/services | awk '{print $1, $2}' | tail -1
then
  echo "SSH Exist"
fi
