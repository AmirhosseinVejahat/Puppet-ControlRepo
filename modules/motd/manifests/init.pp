class motd {
  
  $root_partition = $facts['partitions'].filter | $key, $value | {
   $value['mount'] == '/'
   }
   
  File { '/etc/motd':
          path    =>  '/etc/motd',
          owner   =>  'root',
          group   =>  'root',
          content =>  inline_template("<% Time.now %> Root Partition = ${root_partition}")
  
  
  }



}
