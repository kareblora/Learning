#Create symlink and ensure that file is created

class symlink {
    file {'/opt/security':
        ensure => 'link',
	target => '/var/www/html',
    }

    file {'/opt/security/story.txt':
	ensure => present
    }
}
node 'stapp01.stratos.xfusioncorp.com','stapp02.stratos.xfusioncorp.com','stapp03.stratos.xfusioncorp.com' {
    include symlink
}
