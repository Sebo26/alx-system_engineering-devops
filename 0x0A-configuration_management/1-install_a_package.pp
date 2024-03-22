package { 'flask':
  ensure   => '2.1.0',
  provider => 'pip3',
}

service { 'flask':
  ensure => 'running',
  enable => true,
}
