file {['/customer','/customer/data']:
  ensure => directory,
}->
class {'::mongodb::globals':
  manage_package_repo => true,
}->
class {'::mongodb::server': 
  replset => test01,
  dbpath => '/customer/data/mongodb-data',
}
class {'::mongodb::client': }

