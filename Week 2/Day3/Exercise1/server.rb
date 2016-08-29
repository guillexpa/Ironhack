# server
require 'sinatra'
require_relative 'lib/model.rb'

enable(:sessions)

get "/" do
  erb(:login)
end

post "/log" do
  session[:user] = params["username"]
  session[:pass] = params["password"]

  if Validator.new(session[:user], session[:pass]).validation
    redirect("/profilepage")
  else
    redirect("/")
  end
end

get "/profilepage" do
  @user = session[:user].upcase
  erb(:profilepage)
end

post "/logout" do
  session.clear
  redirect("/")
end
