# add user
exec { ' add user ':
  command => 'adduser holberton; usermod -aG holberton';
  path    => ['/bin', '/usr/bin', '/sbin', '/usr/sbin',]
}
