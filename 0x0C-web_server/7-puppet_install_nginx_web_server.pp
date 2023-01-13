# Install Nginx
package { 'nginx':
  ensure => present,
}

# Ensure Nginx service is running
service { 'nginx':
  ensure => running,
  enable => true,
}

# Configure Nginx to listen on port 80
file { '/etc/nginx/sites-available/default':
  ensure => file,
  content => 'server {
    listen 80;
    server_name _;

    location / {
        return 200 "Hello World!";
    }

    location /redirect_me {
        return 301 /;
    }
}',
  notify => Service['nginx'],
}

