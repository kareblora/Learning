class package_node {
    $single_package = ['tomcat']
    package {$single_package:
        ensure => installed
    }
}

node 'stapp02.stratos.xfusioncorp.com' {
  include package_node
}
