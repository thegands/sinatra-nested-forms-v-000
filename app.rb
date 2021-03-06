require './environment'

module FormsLab
  class App < Sinatra::Base

    # code other routes/actions here
    get '/' do
      erb :root
    end
    get '/new' do
      erb :new
    end
    post '/pirates' do
      @pirate = Pirate.new(params["pirate"])
      @ships = []
      params[:pirate][:ships].each do |ship|
        @ships << Ship.new(ship)
      end
      erb :pirates
    end

  end
end
