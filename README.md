# suitecrm
Suitecrm Automation 
Written and tested on Ubuntu 21.04 and SuiteCRM 7.11.20

# Ubuntu 21.04    
    Download and Install Ubuntu 21.04    

# Bash Script
  ### After logging in into your Ubuntu server on root folder
  * Download script
    * wget https://raw.githubusercontent.com/yosiasz/suitecrm/main/install_suitecrm.sh
    
  * Make it runnable
    * chmod +x install_suitecrm.sh
    
  * Run Script  to get suitecrm installed. You will get prompted few times, just say Y if you approve installations
    * ./install_suitecrm.sh

  * Make sure to change the following in the suitecrm.conf file

    `<VirtualHost *:80>
    ServerName your.website.com`
  * Make sure to create matching name in /etc/hosts

    `sudo nano /etc/hosts`
    *  Then add the following if it does not exist

       `server.ip.address    your.website.com`

# Python Script
