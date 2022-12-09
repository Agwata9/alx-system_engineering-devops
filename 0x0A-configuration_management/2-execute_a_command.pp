# Kills a process name killmenow

exec { 'pkill killmenow':
  command  => 'pkill killmenow',
  provider => shell,
  }
