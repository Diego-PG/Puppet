include prueba #clase creada con "puppet module generate diego-prueba"
include backup

#fichero de prueba en el que se guarda la identidad del usuario que ejecuta puppet agent
file{'/tmp/prueba':
	ensure => present,
	mode => '0664',
	content => "Información sobre el usuario que ejecuta puppet agent ${identity}"
}

#Instalación de Vim y Apache
package { 
	'vim': ensure => installed, install_options => ['-y'];
	'httpd': ensure => installed, install_options => ['-y'];

}
#Configuración de .vimrc
file{'/home/diego/.vimrc':
	ensure => present,
	mode => '0664',
	content => "set nu"

}
#Iniciando el servicio apache
service { 'httpd':
	ensure => 'running',
	enable => 'true';
}
