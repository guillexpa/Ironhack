require 'colorize'

class Blog
  def initialize
      @posts = []
    end

    def pagination (array)
      array.each do |post|
        puts post.title
        puts "**************"
        puts post.text
        puts "---------------------------------------"
        puts ""
      end
    end

  def publishFrontPage
    sorted = @posts.sort{|first,second| first.date <=> second.date}
    exit = false

    # array = sorted.take(3)
    # pagination(sorted)

    user = gets.chomp

    while (!exit) do
      if user == 'next'
        sorted.rotate!(3)
        array = sorted.take(3)
        pagination(array)
        user = gets.chomp
      elsif user == 'prev'
        sorted.rotate!(-3)
        array = sorted.take(3)
        pagination(array)
        user = gets.chomp
      elsif user == 'exit'
        exit = true
      else
        puts "Enter a valid option, please"
        user = gets.chomp
      end
    end
    #array.lenght % 3 = nos dice cuantos posts sobran en la utlima página

  end

  def addPost(post)
    @posts.push(post)
  end

end


class Post
  attr_reader :title, :date, :text
  def initialize (title, date, text)
    @title = title
    @date = date
    @text = text
  end
end


class SponsoredPost < Post
  # attr_reader :title, :date, :text
  def initialize(name, date, text)
    name = "*****#{name}*******"
    super(name, date, text)
  end
end

blog = Blog.new

blog.addPost Post.new('Primer día en Ironhack', Time.new(2016, 04, 02), 'QUINTA FECHA')
blog.addPost SponsoredPost.new('Segundo día en Ironhack', Time.new(2016, 04, 03), '4TA FECHA')
blog.addPost Post.new('Cuarto día en Ironhack', Time.new(2016, 03, 29), 'OWERLQWEHLRIUEW')
blog.addPost Post.new('Quinto día en Ironhack', Time.new(2016, 02, 30), 'werqwerqwe')
blog.addPost Post.new('Sexto día en Ironhack', Time.new(2016, 01, 31), '2342342134213414')
blog.addPost Post.new('Septimo día en Ironhack', Time.new(2015, 05, 23), '3RA FECHA')
blog.addPost SponsoredPost.new('Octavo día en Ironhack', Time.new(2015, 05, 31), '2NDA FECHA')
blog.addPost Post.new('Noveno día en Ironhack', Time.new(2015, 06, 01), '1ERA FECHA')

blog.publishFrontPage
