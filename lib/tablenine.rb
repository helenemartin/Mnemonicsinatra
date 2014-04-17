require 'sinatra/base'
 
class Table < Sinatra::Base
  use Rack::Static, :urls => ['/images', '/css'], :root => 'public'

  get "/" do
    erb :index
  end
end