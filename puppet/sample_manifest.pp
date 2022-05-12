#Install httpd package and start service on agents

class httpd_installer {
    package {'httpd':
        ensure => installed
    }
    service {'httpd':
        ensure    => running,
        enable    => true,
    }
}
node 'stapp01.stratos.xfusioncorp.com', 'stapp02.stratos.xfusioncorp.com', 'stapp03.stratos.xfusioncorp.com' {
  include httpd_installer
}
