#!/bin/bash

#!a script that will search for a specific word in all the files in the current
#!dictionary and then prompt with the file name in which word is found.

grep -wl $1 *.*

