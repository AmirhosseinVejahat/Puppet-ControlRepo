node 'master.puppet.local' {
  
    include role::master
}

node 'agent1.puppet.local' {
  $osfamily = $facts['os']['family']
  user {"somerandomusername":
        ensure => present,
        managehome => true,
        home => '/var/somerandomusername',
        }

  File { '/home/somerandomusername':
         path => '/var/somerandomusername/yangi.txt',
	 ensure => file,
         owner => 'root',
         group => 'root',
         mode => '0644',
	 content => "My System is ${osfamily}"
}

}

node default {

  include role::master

}
