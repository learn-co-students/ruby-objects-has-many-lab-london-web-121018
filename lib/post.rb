class Post
  attr_accessor :title, :author, :name

  @@all = []

  def self.all
    @@all
  end

  def initialize(title)
    @title = title
    @@all << self
  end

  def author_name
    self.author != nil ? self.author.name : self.author
  end

end

#Test method

post = Post.new("My Blog Post!")
post2 = Post.new("My Newest Blog Post!")

author = Author.new("Harry")

binding.pry
