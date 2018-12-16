class Author

attr_accessor :name, :author


  def initialize(name)
    @name = name
  end

  def add_post(post)
  end

  def posts
    Post.all
  end

  def self.post_count
    Post.all.length
  end

  def add_post_by_title(name)
    post = Post.new(name)
    post.author = self
  end

  def add_post(post)
    post.author = self
  end
end
