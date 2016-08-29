require 'pry'
require 'imdb'

class Movie
  attr_reader :movies
  def initialize
    @movies = []
  end

  def search(search)
    search = Imdb::Search.new(search).movies[0..20]
    search.select!{|movie| movie.poster != nil}
    @movies = search[0..8]
  end

end




test1 = Movie.new
arraytest = test1.search("funny")
# binding.pry

test2 = Movie.new.search("scary")
