node 'master.puppet.local' {
  
    include role::master
}

node 'agent1.puppet.local' {

  user {"somerandomusername":
        ensure => present,
        managehome => true,
        home => '/var/somerandomusername',
        }



}

node default {

  include role::master

}
