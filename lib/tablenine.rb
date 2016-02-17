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
    @number = number
     
    if @number = params[:message].to_i <= 10
    {"result" => result.to_s + '.jpg'}.to_json
    else result > 10
    {"result" => "images/animnim.gif?" + Time.now.to_i.to_s }.to_json
    end

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