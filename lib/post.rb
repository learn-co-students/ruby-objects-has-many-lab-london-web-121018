class Post

  attr_accessor :title, :author

  @@all = []

  def initialize(title)
    @title = title
    @@all << self
  end

  def self.all
    @@all
  end

  def author_name
    post = Post.all.find { |track| track.author == self.author }
    if post.author
      post.author.name
      # binding.pry
    elsif post.author == nil
      return nil
    end
  end

end
