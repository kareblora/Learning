#Create and ensure that file is created
#Add content to file
#Set permissions

class file_perm {
    file {'/opt/devops/beta.txt':
        ensure => present,
        content=> 'Welcome to xFusionCorp Industries!',
        mode => '0644',
    }
}
node 'stapp01.stratos.xfusioncorp.com' {
    include file_perm
}
