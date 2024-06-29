class nginx {
    package { 'nginx':
        ensure => installed,
    }
    service { 'nginx':
        ensure => running,
        enable => true,
    }

    file { '/etc/nginx/nginx.conf':
        ensure  => file,
        owner   => 'root',
        group   => 'root',
        mode    => '0644',
        content => template('nginx/nginx.conf.erb'),
        notify  => Service['nginx'],
    }

    file { '/etc/nginx/nginx.conf.erb':
        ensure  => file,
        owner   => 'root',
        group   => 'root',
        mode    => '0644',
        content => template('nginx/nginx.conf.erb'),
    }
}
