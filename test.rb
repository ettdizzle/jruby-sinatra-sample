#!/usr/bin/env jruby

require 'sinatra'
if development?
  require 'sinatra/reloader'
  set :bind, '0.0.0.0'
end

# _App-wide settings_
# set is like attr_accessor for settings class
# e.g, settings.app_name to call from anywhere
set :app_name, "JRuby/Sinatra Test"

# _Handlers_
get '/' do
  @title = "Hello world"
  erb :form
end

post '/' do
  @first_name, @last_name = params[:post].values_at(:first_name, :last_name)
  @title = "#{@first_name}"
  erb :hello
end
