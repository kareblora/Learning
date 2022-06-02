#Install net tools and unzip packages on the agent

class multi_package_node {
    $multi_package = ['net-tools', 'unzip']
    package {$multi_package:
        ensure => installed
    }
}

node 'stapp03.stratos.xfusioncorp.com' {
  include multi_package_node
}
