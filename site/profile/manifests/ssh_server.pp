class profile::ssh_server {
        package {'openssh-server': 
                ensure => present,
        }
        service { 'sshd':
                ensure => running,
                enable => 'true',
        }
        ssh_authorized_key { 'root@master.puppet.vm':
                ensure => present,
                user   => 'root',
                type   => 'ssh-rsa'
                key    => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQDG13ECzFV+/cWMgEfnFoEZ17SG40Dmh/2jy4DstwbPO4Ek9XD6Xv5mQzM8lfA2yqQmOrOzQM/IECFtMdZ4o9qYbt1EAOKudAvll4VzfEnAXyVTFCBO4D7nTlM3aWRftdS71fjBhSkILJlqEDDOERVTD4hrKb9WRxYS7eRDhpn8/VMxPT3heLH5vrTLMHAkCfNKJkUQ+00/vipCpWljBWx80orxKrWNueV4dClVcLgPC+V6TAkH4bobZ9oY3ZFp6OOGncd21tOEb4otFPnzNsv+93PrX2HvsgDiQvqlx6299C+mqox5bf89UvYrSR5Lb6e/IM2OEminq/MP6M5os57H',
        }
}
