#Add user on agents

class add_user {
    user {'rose':
       ensure => present,
       uid => 1935, 
    }
}
node 'stapp01.stratos.xfusioncorp.com' {
  include add_user
}
