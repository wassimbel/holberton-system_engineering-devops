# add user
exec { ' add user ':
  command => 'adduser holberton';
  path    => ['/bin', '/usr/bin', '/sbin', '/usr/sbin',]
}
