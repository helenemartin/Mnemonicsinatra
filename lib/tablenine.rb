require 'sinatra/base'
 
class Table < Sinatra::Base
  use Rack::Static, :urls => ['/images','/css','/webfonts'], :root => 'public'

  get '/' do
    @number = 0
    erb :index
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