# same as task 0
exec {'header':
command  => 'sudo apt-get update -y; sudo apt-get install nginx -y; sudo sed -i "15i \\\n\tadd_header X-Served-By $HOSTNAME;" /etc/nginx/nginx.conf; service nginx restart',
provider => shell,
}
