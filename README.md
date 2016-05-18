# WAFNinja

WAFNinja is a CLI tool written in Python. It shall help penetration testers to bypass a WAF by
automating steps necessary for bypassing input validation. The tool was created with the objective
to be easily extendible, simple to use and usable in a team environment. Many payloads and
fuzzing strings, which are stored in a local database file, come shipped with the tool. WAFNinja
supports HTTP connections, GET and POST requests and the use of Cookies in order to access
pages restricted to authenticated users.

usage: wafninja.py [-h] [-v]
                   {fuzz,bypass,insert-fuzz,insert-bypass,set-db} ...

    
___       ______________________   ______       ________        
__ |     / /__    |__  ____/__  | / /__(_)____________(_)_____ _
__ | /| / /__  /| |_  /_   __   |/ /__  /__  __ \____  /_  __ `/
__ |/ |/ / _  ___ |  __/   _  /|  / _  / _  / / /___  / / /_/ / 
____/|__/  /_/  |_/_/      /_/ |_/  /_/  /_/ /_/___  /  \__,_/  
                                                /___/           
                                                
    WAFNinja - Penetration testers favorite for WAF Bypassing
    
Example Usage:
fuzz:
	python wafninja.py fuzz -u "http://www.target.com/index.php?id=FUZZ" 
	-c "phpsessid=value" -t xss -o output.html 

bypass:
	python wafninja.py bypass -u "http://www.target.com/index.php" 
	-p "Name=PAYLOAD&Submit=Submit" 
	-c "phpsessid=value" -t xss -o output.html

insert-fuzz:
	python wafninja.py insert-fuzz -i select -e select -t sql

positional arguments:
  {fuzz,bypass,insert-fuzz,insert-bypass,set-db}
                        Which function do you want to use?
                        
    fuzz                check which symbols and keywords are allowed by the WAF.
    bypass              sends payloads from the database to the target.
    insert-fuzz         add a fuzzing string
    insert-bypass       add a payload to the bypass list
    set-db              use another database file. Useful to share the same database with others.

optional arguments:
  -h, --help            show this help message and exit
  -v, --version         show program's version number and exit
