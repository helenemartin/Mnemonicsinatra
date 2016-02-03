require 'sinatra/base'
require 'json'
 
class Table < Sinatra::Base
  use Rack::Static, :urls => ['/images','/css','/webfonts'], :root => 'public'

  get '/' do
    @number = 0
    erb :index
  end

  post '/calculate' do
    content_type :json
    p params

    result = params["message"].to_i * 9
    {"result" => result}.to_json
  end

  post '/submit' do
    # Get the number the user is trying to multiply by 9
    p params
    @number = params[:message].to_i
    @calculation = @number * 9
    
     if @number>10
      @error = true
     end
    erb :index

  end


end