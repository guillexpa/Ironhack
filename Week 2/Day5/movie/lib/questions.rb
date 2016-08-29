class Question
  def initialize(movies)
    @movies = movies
    @random = Random.new.rand(9)
  end

  def by_actor

  end

  def by_director
  end


  def by_year
    @movies[@random].year 
  end
