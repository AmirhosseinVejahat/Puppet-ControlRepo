node 'master.puppet.local' {
  
    include role::master
}

node 'agent1.puppet.local' {

  user {"somerandomusername":
        ensure => present,
        managehome => true,
        home => '/var/somerandomusername',
        }

  File { '/home/somerandomusername':
         path => '/home/somerandomusername/yangi.txt',
	 ensure => file,
         owner => 'root',
         group => 'root',
         mode => '0644',
	 content => "My System is $facts['os']['family']"
}

}

node default {

  include role::master

}
