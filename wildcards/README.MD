# what will you learn
* what are wildcards
    * a character or sting used for pattern matching
    * globbing expands the wildcard pattern into a list of files and/or directories (paths)
* when and where they can be used
    * can be used with most commands
        * ls
        * rm
        * cp
* the different types of wildcards
    * two main wildcards: * and ?
    * *-matches zero or more characters
        * *.txt
        * a*
        * a*.txt 
    * ?- matches exactly one character
        * ?.txt
        * a?
        * a?.txt
    *  [] - A character class
        * matches any of the characters included between the brackets. matches exactly one character
        * [aeiou]
        * ca[nt]*
            * can
            * cat
            * candy
            * catch
    * [!] - Matches any of the characters NOT included between the brackets. matches exactly one character.
        * [!aeiou]*
            * baseball
            * cricket

    * use 2 characters seprated by a hyphen to create a range in a character class
    * [a-g]*
        * matches all files that start with a,b,c,d,e,f,or g
    * [3-6]* 
        * matches all files that start with 3,4,5, or 6
    
    * [[:alpha:]] = matches any alphabetic cases upper or lower
    * [[:alnum:]] = matches alpha numberic characters upper/lower or decimal digits 
    * [[:digit:]] = matches any digit from 0-9
    * [[:lower:]] = matches any lower case letters
    * [[:space:]] = matches wide spaces(new line, spaces, tabs, etc)
    * [[:upper:]] = only matches upper case letters

* matching wildcard patterns
    * \ -escape character. Use if you want to match a wildcard character
        * match all files that end witha questionmark:
            * *\?
                * done?

* how to use wildcards with various commands
    * lets say you want to list all files that end in .txt: ls *.txt
    * all files that start with a : ls a*
    * all files start with a and end with .txt: ls a*.txt
    * all files exactly one char in length: ls ?
    * all files 2 chars in length: ls ??
    * all files start with a, 2 chars, end in .txt: ls a?.txt
    * all files that start with c, have vowel, end with t: ls c[aeiou]t
    * all files that start with a, b, c, d : ls [a-d]*
    * all files that end in a digit: ls *[[:digit:]]
    * move all files ending with .txt to dir  called notes: mv *.txt notes
    * remove all files 2 chars in length: rm ??

* write all html files to new folder
    ```bash
        cd /var/www
        cp *.html /var/www-just-html
    ```

* for loop with them
    ```bash
        cd /var/www
        for FILE in *.html
        do
            echo "Copying $FILE"
            cp $FILE /var/www-just-html
        done
    ```

