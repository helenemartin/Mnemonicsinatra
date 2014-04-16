require 'sinatra/base'
 
class Table < Sinatra::Base

  get "/" do
    erb :index
  end
end