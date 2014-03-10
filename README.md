jruby-sinatra-sample
====================

Testing out Sinatra on JRuby to:
  1. Learn Sinatra
  2. Set up a nice development environment for future projects that can use Ruby and other JVM-hosted platforms like [Datomic](http://www.datomic.com/) (via [Diametric](https://github.com/relevance/diametric)).

What I've learned so far:
  * Shotgun and reload don't work on the JVM because fork isn't supported. You can enable 'sinatra/reloader' by requiring it in the app. You just need to include the 'sinatra-contrib' gem.
  * You can set global variables using the 'set' macro. I'm using this to set the name for the app and prepend it to the title of each page.
  * I do development on a remote server (because my regular laptop is a Chromebook). If you fire up the development server on a remote machine and want to see your pages by going to ```http://your-website.com:4567```, then you need to tell Sinatra not to use```localhost```. You can either pass Sinatra the```-o``` flag when you run the server like ```$ ruby test.rb -o 0.0.0.0``` or you can ```set :bind, '0.0.0.0'``` in the app.
