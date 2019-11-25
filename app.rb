require_relative 'config/environment'
require "pry"

class App < Sinatra::Base
  
  configure do
    enable :sessions
    set :session_secret, "secret"
  end
  
  get "/" do 
    erb :index
  end 
  
  post "/checkout" do 
    @sessions = session
    item = params["item"]
    binding.pry
    @sessions[:item] = item
  end 
end