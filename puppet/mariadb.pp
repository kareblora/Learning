#Install mariadb package, start service on agents and create database

class mysql_database {
    package {'mariadb-server':
        ensure => installed
    }
    service {'mariadb':
        ensure    => running,
        enable    => true,
    }
    mysql::db { 'kodekloud_db7':
      user     => 'kodekloud_tim',
      password => 'ksH85UJjhb',
      host     => 'localhost',
      grant    => ['ALL'],
    }	
}
node 'stdb01.stratos.xfusioncorp.com' {
  include mysql_database
}
