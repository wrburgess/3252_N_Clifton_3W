#gems
require "bundler/setup"
require "sinatra"
require "haml"
require "sass"

#modules
require "./lib/module"

#config
class App
  def self.name
    "Chicago Apartment for Rent | 3252 N Clifton Ave"
  end
end

get "/" do
  @title = App.name
  @body_class = "home"

  haml :index, :layout => :'layout'
end