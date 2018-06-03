node default{
#  file {'/root/README':
#    ensure  => 'file',
#    content => 'Adding some content',
#    owner   => 'root',
#  }
}

node 'master.puppet.vm' {
  include role::master_server
}

node /^wev/ {
  include role::app_server
}

node /^db/ {
  include role::db_server
}
