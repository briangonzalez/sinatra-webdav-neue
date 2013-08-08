## Sinatra Webdav Neue

A Sinatra-based webdav server powered by rack_dav.

### How to

Fire up a terminal and:

```bash
$ git clone git@github.com:briangonzalez/sinatra-webdav-neue.git  
$ bundle install
$ bundle exec thin start -R config.ru -p 9000
```

You now have a webdav server running on port 9000 of your machine.


### Running behind nginx

You'll first off need to install the nginx and the [nginx-dav-ext-module](https://github.com/arut/nginx-dav-ext-module) module on your server, as well as [passenger](https://www.phusionpassenger.com/). A typical nginx server block might look like so:

```nginx
server {
  listen 80;
  server_name cloud.myserver.com;

  root /srv/www/sinatra-webdav-neue/current/public;

  access_log /srv/www/sinatra-webdav-neue/logs/access.log;
  error_log /srv/www/sinatra-webdav-neue/logs/error.log;

  passenger_enabled on;
  rails_env production;
}
```

Also see [docs on installing passenger with nginx](http://www.modrails.com/documentation/Users%20guide%20Nginx.html) to power your webdav install.

### Contact
Find me on twitter [@brianmgonzalez](http://twitter.com/brianmgonzalez).
