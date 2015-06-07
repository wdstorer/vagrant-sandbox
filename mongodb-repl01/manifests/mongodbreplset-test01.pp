file { "/customer/data/mongodb-data":
  ensure => "directory",
}->
file { "/customer/data/mongodb-log":
  ensure => "directory",
}->
class {'::mongodb::globals':
  manage_package_repo => true,
}->
class {'::mongodb::server':
  replset => test01,
  dbpath => "/customer/data/mongodb-data",
  logpath => "/customer/data/mongodb-log/mongodb.log",
}->
class {'::mongodb::client': }

