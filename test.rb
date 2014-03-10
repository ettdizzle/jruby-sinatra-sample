require 'sinatra'
require 'sinatra/reloader' if development?

# _App-wide settings_
# set is like attr_accessor for settings class
# e.g, settings.app_name to call from anywhere
set :app_name, "JRuby/Sinatra Test"


get '/' do
  "Hello world!"
end

get '/hi/:name' do
  "Hi #{params[:name]}!"
end

get '/time' do
  @title = "Time"
  erb 'The time is <%= Time.now.strftime("%I:%M:%S %p") %>'
end

__END__

@@ layout
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN"
  "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
  <title><%= "#{settings.app_name} - #{@title}" %></title>
<meta http-equiv="content-type" content="text/html;charset=utf-8" />
</head>
<body>
  <%= yield %>
</body>
</html>
