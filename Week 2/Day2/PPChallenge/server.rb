#server
require "sinatra"
require 'artii'
require "pry"

get "/ascii/:word/?:font?" do

  @font = params[:font]
  @word = params[:word]

  erb(:ascii)
end


get "/ascii/platypus/special/secret" do
  erb(:secret)
end
