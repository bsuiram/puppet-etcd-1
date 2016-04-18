# == Class: etcd
#
class etcd::install {
  if $::etcd::manage_package {
    package { 'etcd':
      ensure => $::etcd::ensure,
      name   => $::etcd::etcd_packagename,
    }
  }
}
