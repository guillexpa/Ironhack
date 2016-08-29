#server
require "sinatra"

get "/" do
  "My first sinatra app"
end

get "/about" do
  erb(:about)
end

get "/:username" do
  @username = params[:username]
  erb(:users)
end

get "/hours/ago/:num" do
  @number = params[:num]
  erb(:hours)
end
