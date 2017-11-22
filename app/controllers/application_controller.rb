require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do
      erb :super_hero
    end

    post '/team' do
      @team_name = params[:team][:name]
      @team_motto = params[:team][:motto]
      @member1_name = params[:team][:heros][0][:name]
      @member1_power = params[:team][:heros][0][:power]
      @member1_bio = params[:team][:heros][0][:biography]
      @member2_name = params[:team][:heros][1][:name]
      @member2_power = params[:team][:heros][1][:power]
      @member2_bio = params[:team][:heros][1][:biography]
      @member3_name = params[:team][:heros][2][:name]
      @member3_power = params[:team][:heros][2][:power]
      @member3_bio = params[:team][:heros][2][:biography]

      erb :team
    end


end
