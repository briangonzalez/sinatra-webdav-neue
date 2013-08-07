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


### Putting behind nginx
See [docs on installing passenger with nginx](http://www.modrails.com/documentation/Users%20guide%20Nginx.html) to power your webdav install.

### Contact
Find me on twitter [@brianmgonzalez](http://twitter.com/brianmgonzalez).
