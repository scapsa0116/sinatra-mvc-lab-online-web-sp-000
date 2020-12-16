require_relative 'config/environment'
require_relative 'models/piglatinizer'

class App < Sinatra::Base
    get "/" do 
        erb :user_input
    end

    post "/piglatinize" do 
        @pig_latin = Piglatinize.new.piglatinize(params[:user_phrase].to_s)
    erb :piglatinize
    end 

    # post "/piglatinize" do 
    # user_phrase = "Once upon a time and a very good time it was there was a moocow coming down along the road and this moocow that was coming down along the road met a nice little boy named baby tuckoo"
    # erb :piglatinize
    # end 
end