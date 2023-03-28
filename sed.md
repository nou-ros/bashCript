# echo "Bash Scripting Language" | sed 's/Bash/Perl/'
- Perl Scripting Language

# cat test.txt
Monday
Tuesday
Wednesday
Thursday
Friday
Saturday
Sunday

- sed 's/Sunday/Sunday is holiday/' weekday.txt
Monday
Tuesday
Wednesday
Thursday
Friday
Saturday
Sunday is holyday

# cat test.txt
Python is a very popular language.
Python is easy to use. Python is easy to learn.
Python is a cross-platform language.

- sed '2 s/Python/perl/g' test.txt 
Python is a very popular language.
perl is easy to use. perl is easy to learn.
Python is a cross-platform language.

- sed 's/Python/perl/g2' test.txt
Python is a very popular language.
Python is easy to use. perl is easy to learn.
Python is a cross-platform language.

- sed -e '$s/Python/Bash/' test.txt
Python is a very popular language.
Python is easy to use. Python is easy to learn.
Bash is a cross-platform language. 

# echo /home/ubuntu/code/perl/add.pl | sed 's;/;\*;g' 
- *home*ubuntu*code*perl*add.pl

# echo "/home/ubuntu/temp/myfile.txt" | sed 's/.*\///'
- myfile.txt

