require './environment'
require 'pry'

module FormsLab
  class App < Sinatra::Base

    get '/' do
      erb :root
    end

    get '/new' do
      erb :'pirates/new'
    end

    post '/pirates' do
      p1 = Pirate.new(params[:pirate])
      s1 = Ship.new(params[:pirate][:ships][0])
      s2 = Ship.new(params[:pirate][:ships][1])
      %Q(
        #{p1.name}
        #{p1.height}
        #{p1.weight}
        #{s1.name}
        #{s1.type}
        #{s1.booty}
        #{s2.name}
        #{s2.type}
        #{s2.booty}
      )
      
    end

    # get '/pirates' do
    #   binding.pry
    #   @pirates = Pirate.all
    #   @ships = Ship.all
    #   erb :index
    # end

  end
end
