require './environment'

module FormsLab
  class App < Sinatra::Base

    # code other routes/actions here
    get '/' do
      "Welcome to the Nested Forms Lab!"
    end

    get '/new' do
      erb :new
    end
    
    post '/pirates' do
      @pirate = Pirate.new(name: params[:pirate][:name], height: params[:pirate][:height], weight: params[:pirate][:weight])
      params[:pirate][:ships].each do |s|
        Ship.new({name: s[:name], booty: s[:booty], type: s[:type]})
      end
      @ships = Ship.all
      erb :show
    end

  end
end
