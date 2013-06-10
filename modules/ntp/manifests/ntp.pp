class ntp {
	package { "ntp": 
		ensure => installed,
	}

	service { "ntpd":
		ensure => running,
	}
	
	file { "/etc/ntp.conf":
		source => "puppet:///modules/ntp/ntp.conf",
		owner => root,
		group => root,
		mode => 644,
	}
}
