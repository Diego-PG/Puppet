# Class: prueba
# ===========================
#
# Full description of class prueba here.
#
# Parameters
# ----------
#
# Document parameters here.
#
# * `sample parameter`
# Explanation of what this parameter affects and what it defaults to.
# e.g. "Specify one or more upstream ntp servers as an array."
#
# Variables
# ----------
#
# Here you should define a list of variables that this module would require.
#
# * `sample variable`
#  Explanation of how this variable affects the function of this class and if
#  it has a default. e.g. "The parameter enc_ntp_servers must be set by the
#  External Node Classifier as a comma separated list of hostnames." (Note,
#  global variables should be avoided in favor of class parameters as
#  of Puppet 2.6.)
#
# Examples
# --------
#
# @example
#    class { 'prueba':
#      servers => [ 'pool.ntp.org', 'ntp.local.company.com' ],
#    }
#
# Authors
# -------
#
# Author Name <author@domain.com>
#
# Copyright
# ---------
#
# Copyright 2017 Your name here, unless otherwise noted.
#
class prueba {
	user{'user1':
		ensure => present,
		password => '$1$B8BYHLHN$ctffchqfCClo7kkDNlm1w1',
		managehome => true,
		home => "/home/user1",
		shell => '/bin/bash'
	}

}
file{'/home/user1/file.txt':
	ensure => present,
	mode => '0664',
	content => "Test file created in user1 home"
}
