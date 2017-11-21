require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do
      erb :super_hero
    end

    post '/teams' do
      @team = params[:team]
      @member_one = params[:team][:members][0]
      @member_two = params[:team][:members][1]
      @member_three = params[:team][:members][2]
      erb :team
    end

end
