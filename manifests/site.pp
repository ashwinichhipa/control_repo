node default{
  file {'/root/README':
    ensure => 'file',
    content => 'Adding some content',
  }
}
