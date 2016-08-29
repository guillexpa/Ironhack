require "sinatra"
require "pry"

require_relative "lib/blog.rb"
require_relative "lib/post.rb"

blog = Blog.new
blog.addPost(Post.new("Titulo 1", Time.new(2016, 01, 02), "Texto del primer post", "porn", "Guille"))
blog.addPost(Post.new("Titulo 2", Time.new(2016, 01, 01), "Texto del segundo post","porn", "Guille"))
blog.addPost(Post.new("Titulo 3", Time.new(2016, 01, 03), "Texto del tercer post","penises", "Guille"))


get "/" do
  @posts = blog.sortBlog
  erb(:blog)
end

get "/post_details/:index" do
  @index = params[:index].to_i
  @posts = blog.sortBlog
  @selected = @posts[@index]
  erb(:post)
end

get "/new_post" do
  erb(:newpost)
end

post "/post" do
  category = params["category"]
  author = params["author"]
  title = params["title"]
  text = params["text"]
  date = Time.now
  blog.addPost(Post.new(title, date, text, category, author))
  redirect("/")
end
