# @summary A short summary of the purpose of this class
#
# A description of what this class does
#
# @example
#   include flask_init::install_all
class flask_init::install_all {

  package { "python":
    ensure => present,
  }
  package { "python-pip":
    ensure => present,
    require => Package[python]
  }
  exec { 'install flask':
    path => '/usr/bin:/usr/sbin:/bin',
    command => 'pip install flask',
    require => Package[python-pip],
  }
  package { 'postgresql':
    ensure => present,
  }
  service { 'postgresql':
    ensure => running,
    require => Package[postgresql],
  }
  package { 'gunicorn':
    ensure => present,
  }
}
