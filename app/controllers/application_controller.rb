require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do
      erb :super_hero
    end

    post'/teams' do
      @name = params["team"]["name"]
      @motto = params["team"]["motto"]
      @m1_name = params["team"]["member"][0]["name"]
      @m1_power = params["team"]["member"][0]["power"]
      @m1_bio = params["team"]["member"][0]["bio"]
      @m2_name = params["team"]["member"][1]["name"]
      @m2_power = params["team"]["member"][1]["power"]
      @m2_bio = params["team"]["member"][1]["bio"]
      @m3_name = params["team"]["member"][2]["name"]
      @m3_power = params["team"]["member"][2]["power"]
      @m3_bio = params["team"]["member"][2]["bio"]
      erb :team
    end

end
