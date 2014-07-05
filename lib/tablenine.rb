require 'sinatra/base'
 
class Table < Sinatra::Base
  use Rack::Static, :urls => ['/images', '/css'], :root => 'public'

  get '/' do
    erb :index
  end

  post '/submit' do
    # Get the number the user is trying to multiply by 9
    @number = params[:text].to_i
    @calculation = @number * 9
    
     if @number>10
      @error = true
     end
    erb :calculation
  end


end