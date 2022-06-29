#!/bin/bash

location=/var/www/html
file_name="index.html"

if [ -e $location ]
then
    echo "Ok on the $location directory."
    echo "Now checking on the file, $file_name"
    if [ -e $location/$file_name ]
    then
        echo "Ok on the filename"
        echo "Hello world" > $location/$file_name
        systemctl start httpd
        echo $(curl http://localhost)
    else
        echo "File does not exist"
        echo "I need a index.html file" > $location/README.md
        systemctl stop httpd
    fi
else
    echo "The $location directory does not exist"
    yum install httpd -y
fi
