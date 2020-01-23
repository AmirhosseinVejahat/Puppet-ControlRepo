class motd {
  
  $boot_parition = $facts['partitions'].filter | $key, $value | {
   $value['mount'] == '/boot'
   }
   
  File { '/etc/motd':
          path    =>  '/etc/motd',
          owner   =>  'root',
          group   =>  'root',
          content =>  inline_template("<% Time.now %> BOOT Partition = ${boot_partition}")
  
  
  }



}
