# fix ULIMIT
exec {' fix ULIMIT ':
  command  => 'sed -i \'s/ULIMIT=.*/ULIMIT="-n 2000"/g\' /etc/defaukt/nginx; service nginx restart,
  path     => '/bin',
}
