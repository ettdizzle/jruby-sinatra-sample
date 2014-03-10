require 'sinatra'
require 'sinatra/reloader' if development?

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
  erb "Hello #{@first_name} #{@last_name}!"
  # erb :hello # -> put this info into views/hello.erb
end

# get '/hi/:name' do
#   "Hi #{params[:name]}!"
# end

get '/time' do
  @title = "Time"
  erb 'The time is <%= Time.now.strftime("%I:%M:%S %p") %>'
end
