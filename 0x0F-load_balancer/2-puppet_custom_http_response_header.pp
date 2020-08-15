# same as task 0
exec { ' custom header ':
command  => 'sudo apt-get update &&
            sudo apt-get -y install nginx && 
            sudo ufw allow 'Nginx HTTP' &&
printf %s "server {
        listen 80;
        listen [::]:80 default_server;
        add_header X-Served-By $HOSTNAME;
        root   /usr/share/nginx/html;
        index  index.html index.htm;
        location /redirect_me {
                return 301 http://youtube.com/watch?v=QH2-TGUlwu4;
    }
}" > /etc/nginx/sites-available/default &&
service nginx restart',
provider => 'shell',
}
