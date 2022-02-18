#!/bin/sh 

discovery() 
{
    ./Discovery 2> /dev/null
    while [ "$?" = "255" ]
    do
        ./Discovery 2> /dev/null
    done 

}

discovery
