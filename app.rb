require_relative 'config/environment'
require_relative 'models/piglatinizer'

class App < Sinatra::Base
    get "/" do 
        erb :user_input
    end

    post "/" do 
        @pig_latin = Piglatinize.new.piglatinize(params[:user_phrase].to_s)
        erb :piglatinize
    end 

    post "/piglatinize" do 
        @user_phrase 
        # erb :piglatinize
    end 
end