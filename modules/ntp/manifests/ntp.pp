class ntp {
	package { "ntp": 
		ensure => installed 
	}

	service { "ntpd":
		ensure => running
	}
	
	file { "/etc/ntp.conf":
		source => "puppet:///modules/ntp/client_ntp.conf",
	}
}
