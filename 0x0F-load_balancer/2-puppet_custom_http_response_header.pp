# same as task 0
exec { 'custom header':
command  => 'sudo apt-get update &&
             sudo apt-get -y install nginx && 
             sudo ufw allow 'Nginx HTTP' &&
             sudo sed -i "16i \tadd_header X-Served-By $HOSTNAME;" /etc/nginx/nginx.conf &&
             service nginx restart',
provider => shell,
}
