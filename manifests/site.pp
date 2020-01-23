node 'master.puppet.local' {
  
    include role::master
}

node default {

  include role::master

}
