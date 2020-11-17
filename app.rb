require_relative 'config/environment'
#equire_relative 'models/piglatinazer.rb'

class App < Sinatra::Base

    get '/' do

        erb :user_input
    end

    post '/piglatinize' do

        @text = PigLatinizer.new.piglatinize(params[:user_phrase])

        erb :latinizer

    end 


end