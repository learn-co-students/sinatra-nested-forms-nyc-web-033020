require './environment'
require 'logger'
logger = Logger.new("log.txt")
logger.debug "App is started"
module FormsLab
  class App < Sinatra::Base

    get '/' do
      erb :root
    end

    get '/new' do
      logger.debug "Creating new pirate"
      erb :'pirates/new'
    end

    post '/pirates' do
      logger.debug "pirate name: #{params[:pirate][:name]}"
      @pirate = Pirate.new(params[:pirate])
      params[:pirate][:ships].each do |info|
        Ship.new(info)
      end
      @ships = Ship.all

      @test = "test"

      erb :'pirates/show'
    end
  end

end
