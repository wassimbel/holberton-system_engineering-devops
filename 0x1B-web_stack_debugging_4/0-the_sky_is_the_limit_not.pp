# fix ULIMIT
exec { 'fix ULIMIT':
  command =>  'sed -i \'s/ULIMIT=.*/ULIMIT="-n 4096"/g\' /etc/default/nginx ; service nginx restart',
  path    =>  [ '/bin', '/usr/bin', '/sbin', '/usr/sbin' ]
  }
