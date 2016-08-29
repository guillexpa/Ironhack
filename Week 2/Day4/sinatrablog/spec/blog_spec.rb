require_relative("../lib/blog.rb")
require_relative("../lib/post.rb")

RSpec.describe Blog do
  before(:each) do

    @post1 = Post.new("Titulo 1", Time.new(2016,02,01), "text 1")
    @post2 = Post.new("Titulo 2", Time.new(2016,01,01), "text 2")
    @blog = Blog.new
    @blog.addPost(@post1)
    @blog.addPost(@post2)

  end

  it "blog returns a list" do
    expect(@blog.sortBlog).to be_instance_of Array
  end

  it "blog returns a list of posts" do
    @blog.sortBlog.each do |post|
      expect(post).to be_instance_of Post
    end
  end

  it "blog returns a list of sorted posts by date" do
    expect(@blog.sortBlog[0].date).to be > @blog.sortBlog[1].date
  end


  it "title returs title" do
    expect(@post1.title).to eq("Titulo 1")
    expect(@post2.title).to eq("Titulo 2")
  end

  # it "date returns date" do
  #   expect(@post1.date).to eq(Time.new(2016,02,01))
  #   expect(@post2.date).to eq()
  # end

  it "text returns text" do
    expect(@post1.text).to eq("text 1")
    expect(@post2.text).to eq("text 2")
  end


end
