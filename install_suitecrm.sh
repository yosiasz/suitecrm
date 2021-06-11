sudo apt update
sudo apt install apache2
sudo ufw allow 'Apache'
#sudo systemctl status apache2
sudo systemctl enable apache2

#download and extracy suitecrm
sudo wget https://suitecrm.com/files/162/SuiteCRM-7.11/525/SuiteCRM-7.11.18.zip
sudo apt install unzip
sudo mkdir -p /var/www/
sudo mv /var/www/SuiteCRM-7.11.18/ /var/www/suitecrm
cd /var/www/suitecrm
sudo chown -R www-data:www-data /var/www/suitecrm/
sudo chmod -R 755 .
sudo chmod -R 775 cache custom modules themes data upload
sudo chmod 775 config_override.php 2>/dev/null

sudo apt install php-imagick php7.4-fpm php7.4-mysql 
sudo apt install php7.4-common php7.4-gd php7.4-imap php7.4-json 
sudo apt install php7.4-curl php7.4-zip php7.4-xml php7.4-mbstring 
sudo apt install php7.4-bz2 php7.4-intl php7.4-gmp
sudo a2dismod php7.4
sudo a2dismod mpm_prefork
sudo a2enmod mpm_event proxy_fcgi setenvif
sudo systemctl restart apache2

sudo wget https://github.com/yosiasz/suitecrm/suitecrm.conf
sudo mv suitecrm.conf /etc/apache2/sites-available/suitecrm.conf

sudo a2ensite suitecrm.conf

sudo systemctl reload apache2

#https
#sudo apt install certbot
#sudo apt install python3-certbot-apache
#sudo certbot --apache --agree-tos --redirect --hsts --staple-ocsp --email you@example.com -d suitecrm.example.com