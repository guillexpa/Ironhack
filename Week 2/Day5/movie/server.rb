require 'sinatra'
require 'imdb'
require 'pry'
require_relative 'lib/movies.rb'

list = Movie.new

get "/" do
  erb(:input)
end


get "/quizz" do
  @index = Random.new.rand(9)
  @movie = list.movies
  erb(:results)
end

post "/search" do
  list.search(params["search"])
  redirect("/quizz")
end
