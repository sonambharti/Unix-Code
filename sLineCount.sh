
#! script program, to count line

grep -cvP '\S' ques2.sh

#! -P '\S' (pearl regex) will match any line contains non-space
#! -v select non-matching lines
#! -c print a count of matching lines
#! ques2.sh is file name here


#! using -c

grep -c ^$ ques2.sh

<<com
When -c option is used with grep, it counts the number of 
occurrences of the search string and outputs the same.
com



read filename
grep -cvP '\S' $filename

