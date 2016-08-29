class Blog
  attr_reader :posts
  def initialize
      @posts = []
    end

  def sortBlog
    sorted = @posts.sort{|first,second| second.date <=> first.date}
    @posts = sorted
    @posts
  end

  def addPost(post)
    @posts.push(post)
  end

end
