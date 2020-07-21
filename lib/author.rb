require 'pry'

class Author

  attr_accessor :name, :posts, :new_post

  def initialize(name)
    @name = name
    @posts = []
  end

  def add_post(new_post)
    self.posts << new_post
    new_post.author = self
  end

  def add_post_by_title(title)
    @new_post = Post.new(title)
    add_post(new_post)
  end

  def self.post_count
    Post.all.count
    # binding.pry
  end


end
