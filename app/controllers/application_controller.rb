require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do
      erb :teams
    end

    post '/teams' do
      @team = Team.new(params[:team])
      @hero1 = Hero.new(params[:team][:members][0])
      @hero2 = Hero.new(params[:team][:members][1])
      @hero3 = Hero.new(params[:team][:members][2])

      erb :show
    end
end
