# using strace to debug curl command returning 500 Internal server Error, 
# fix the issue with command sed and restart apache2
exec { ' fix /var/www//html/wp-settings.php ':
  command => 'sed -i \'s/class-wp-locale.phpp/class-wp-locale.php/g\' /var/www/html/wp-settings.php && service apache2 restart',
  path    => [ '/bin', '/usr/bin'],
}
