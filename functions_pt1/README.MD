# what you will learn
* why to use functions
    * Keep it dry
    * dont repeat yourself!, dont repeat yourself!
    * write once, use many times
    * reduces script length
    * single place to edit and troiuble shoot
    * easier to maintain
    * if youre repeating yourself, use a function
    * reusable code
    * must be defined before use
    * has parameter support

* how to create them
    ```bash
        function function-name() {
            # code goes here
        }
    
        function-name() {
            # code goes here
        }
    ```
* how to use them
    ```bash
        function hello() {
            echo "Hello!"
        }
        hello
        
    ```
* functions can call other functions
    ```bash
        function hello() {
            echo "Hello!"
            now
        }

        function now() {
            echo "It's $(date +%r)"
        }
        hello 
    ```
   * in scripting language its top down approach so best to pout all functions at top of script and a function cant use a function that has not yet been defined it will throw an error

* function parameters
    * functions can accept parameters
    * the first parameter is stored in $1
    * the second parameters is stored in $2, etc
    * $@ contains all of the parameters
    * just like shell scripts
        * $0 = the script itself, not function name

    ```bash

        function hello() {
            echo "Hello $1"
        }
        hello Jason
        # output = Hello Jason
        
    ```
    
    ```bash
        function hello() {
            for Name in $@
            do
                echo "Hello $Name"
            done
        }   
        hello Jason Dan Ryan
    ```
* varible scope
    * by default, varibles are global
    * Varibles have to be defined before used

    ```bash
        GLOBAL_VAR=1
        # GLOBAL_VAR is availble
        # in the function
        my_function
    ```
    
    ```bash
        # GLOBAL_VAR is not avalible
        # in the function
        my_function
        GLOBAL_VAR=1
    ```

    ```bash
        my_function() {
            GLOBAL_VAR=1
        }
        # GLOBAL_VAR not avalible yet
        echo $GLOBAL_VAR
        my_function
        #Global_VAR is Now avalible
        echo $GLOBAL_VAR
    ```
    * local Varibles
        * can only be accessed within the fuction 
        * create uing the local keyword 
            * local LOCAL_VAR=1
        * Only functions can have local varibles
        * Best practice to keep varibles local in functions

* exit statuses and return codes 
    * functions have an exit status
    * explicitly
        * return <RETURN CODE>
    * implicity
        * the exit status of the last command executed in the function
    * Valid exit codes range from 0 to 255
    * 0 = success
    * $? = the exit status

    ```bash
        my_function
        echo $?
    ```
