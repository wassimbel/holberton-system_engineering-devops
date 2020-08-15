# same as task 0
exec { ' custom header ':
command  => 'sudo apt-get update; sudo apt-get -y install nginx;
printf %s "server {
        listen 80;
        listen [::]:80 default_server;
        add_header X-Served-By $HOSTNAME;
        root   /usr/share/nginx/html;
        index  index.html index.htm;
}" > /etc/nginx/sites-available/default;
sudo service nginx restart',
provider => 'shell',
}
