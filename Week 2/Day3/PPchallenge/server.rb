require 'sinatra'
require_relative 'lib/model.rb'


enable(:session)


get "/" do
  erb(:log)
end

post "/login" do
  @checker = PasswordChecker.new
  session[:email] = params["email"]
  session[:pass] = params["password"]

  if @checker.check_password(session[:email], session[:pass])
    redirect("/congratulations")
  else
    redirect("/wrong")
  end
end


get "/congratulations" do
  erb(:congratulations)
end

get "/wrong" do
  erb(:wrong)
end

post "/back" do
  redirect("/")
end
