require_relative 'config/environment'
require_relative 'models/piglatinizer.rb'
class App < Sinatra::Base
  
  get '/' do 
    erb :user_input 
  end 
  
  # get '/piglatinize' do 
  #   @user_phrase = PigLatinizer.new(params["user_input"])
  #   erb :piglatinize
  # end 
  
 
  
  post '/piglatinize' do 
    phrase = PigLatinizer.new
    @user_input = phrase.piglatinize(params[:user_phrase])
    erb :piglatinize
  end
  
  
#   post '/piglatinize' do 
    
# erb :piglatinize
# end 
  
 
end