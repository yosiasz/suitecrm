# suitecrm
Suitecrm Automation 

# Ubuntu 21.04
    Written and tested on Ubuntu 21.04 
    Download and Install Ubuntu 21.04
    ubuntu-21.04-live-server-amd64.iso

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
    ServerName your.server.ip.address`

# Python Script
