#String manipulation

class string_replace {
    file {'/opt/itadmin/cluster.txt' :
	ensure => present,
    }

    file_line {'line_replace':
        ensure => present,
	path => '/opt/itadmin/cluster.txt',
	match => "Welcome to Nautilus Industries!",
	line => "Welcome to xFusionCorp Industries!",
    }
}
node 'stapp02.stratos.xfusioncorp.com' {
    include string_replace
}
