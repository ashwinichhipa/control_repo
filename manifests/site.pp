node default{
  file {'/root/README':
    ensure  => 'file',
    content => 'Adding some content',
    owner   => 'root',
  }
  file {'/root/README':
    owner   => 'root',
  }
}
