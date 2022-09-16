class { 'ntp':
  servers => [ 'server 1.my.pool.ntp.org iburst' ],                                               
}    

class ntpconfig {
  include ntp
}  

node 'stapp02.stratos.xfusioncorp.com' {
    include ntpconfig
}
