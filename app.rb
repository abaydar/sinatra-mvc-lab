require_relative 'config/environment'

class App < Sinatra::Base
    get '/' do
        erb :user_input
    end

    post '/piglatinize' do
        instance = PigLatinizer.new
        @pig_latin_text = instance.pig_latinize(params[:user_text])

        erb :pig_latinized
    end
end