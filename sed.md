# echo "Bash Scripting Language" | sed 's/Bash/Perl/'
- Perl Scripting Language

# cat test.txt
Friday
Saturday
Sunday

- sed 's/Sunday/Sunday is holiday/' weekday.txt
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

- sed 's/python/dl/i2' test.txt | sed '/dl/d'
Python is a very popular language.

Python is a cross-platform language.

- sed '/^$/d' test.txt

- sed '/Python is a cross-platform language./ s/^/Python is an interpreted lanuage.\n/' test.txt
Python is a very popular language.

Python is easy to use. Python is easy to learn.

Python is an interpreted lanuage.
Python is a cross-platform language.

- sed -e 's/very /&&/g' test.txt
Python is a very very popular language.

Python is easy to use. Python is easy to learn.

Python is a cross-platform language.
# echo /home/ubuntu/code/perl/add.pl | sed 's;/;\*;g' 
- *home*ubuntu*code*perl*add.pl

# echo "/home/ubuntu/temp/myfile.txt" | sed 's/.*\///'
- myfile.txt

# cat test.txt
List of Total Students: 

CSE - Count
EEE - Count
Civil - Count

- sed  -e '/CSE/ s/Count/100/; /EEE/ s/Count/70/;' test.txt
List of Total Students:

CSE - 100
EEE - 70
Civil - Count

- sed -e '/CSE/! s/Count/80/;' test.txt
List of Total Students:

CSE - Count
EEE - 80
Civil - 80

- sed '/CSE/d' test.txt
List of Total Students:

EEE - 80
Civil - 80

- sed '/CSE/,+2d' test.txt
- nothing 

-  sed -i 's/[[:blank:]]*$//' test.txt
- will remove all trailling spaces from line 

# echo "Bash language" | sed  's/\(Bash\)/Learn \1 programming/'
- Learn Bash programming language

# echo "hello world ny" | sed '/ny/ s/$/ 10/'
- hello world ny 10

# cat os.txt
Windows
Linux
Android
OS

- sed 's/Linux/&\nUbuntu/' os.txt
Windows
Linux
Ubuntu
Android
OS

- sed '/Linux/! s/$/ Operating System/' os.txt
Windows Operating System
Linux
Android Operating System
OS Operating System

- sed '/OS/!d' os.txt
OS

- sed '/L/!d' os.txt
Linux

- sed -z 's/\n/,/g' os.txt
Windows,Linux,Android,OS,

- sed '/linux/Id' os.txt
Windows
Ubuntu
Android
OS

- sed 's/\(linux\)/\U\1/Ig' os.txt
Windows
LINUX
Android
OS

- sed  's/\(.*\)/\L\1/' os.txt
windows
linux
android
os

# echo "Bash Perl Python Java PHP ASP" | sed 's/Python/Added Text\n/'
Bash Perl Added Text
 Java PHP ASP

# echo "Kaniz Fatema,30th,batch" | sed "s/,/\n/g"
Kaniz Fatema
30th
batch

#  echo "I like bash programming " | sed 's/Bash/PHP/i'
I like PHP programming


32