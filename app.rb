require './environment'

module FormsLab
  class App < Sinatra::Base

    get '/' do
      erb :root
    end

    get '/new' do
      erb :"pirates/new"
    end

    post '/pirates' do
      @pirate = Pirate.new(params[:pirate])

      @ships = params[:pirate][:ships].map do |ship_params|
        Ship.new(ship_params)
      end

      erb :"pirates/show"
    end

  end
end
