#Create and ensure that file is created

class file_create {
    file {'/opt/itadmin/media.txt':
        ensure => present
    }
}
node 'stapp01.stratos.xfusioncorp.com' {
    include file_create
}
