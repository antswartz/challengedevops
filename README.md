You have been tasked with putting up a new web server for your company, "I Can Haz Devops", a tech based startup that teaches cats how to support customer code. 

The task has some requirements: 
-It must run on the Rackspace Open Cloud 
-It must run on a Linux variant 
-It can use apache or nginx, which must start at boot time 
-It should serve a simple webpage saying that the site is under construction, and must have the servername displayed on the page along with your name. 
    No bonus points for lolcats, but they are appreciated of course. 
    This index.html should be dynamically created by your config mgmt system. 

-We should be able to stand up a new server with a minimal set of commands, and at any time, and with a repeatable process 

--This means we need some sort of configuration management. You can use Chef, Chef-Solo, Hosted Chef. 
    Create the server as part of the config management process (ie: use knife)

--NO configuration files should be staticly just pushed onto the server. Your configuration management tool should be creating the config files when a new server is created.

-Some standard sysadmin-y packages should be installed:
    vim                  vim-minimal.x86_64    
    screen              screen.x86_64  
   python
    ruby and fog      ruby.x86_64
    curl                   curl.x86_64
    git                        git.x86_64


 -You must use source control (i.e. git) in some w
