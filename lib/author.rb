class Author

attr_accessor :name, :posts

@@posttotal = []

def initialize (name)
  @name = name
  @posts = []

end

def add_post(post)
  @posts << post
  @@posttotal << post
  post.author = self
end

def add_post_by_title(title)
  post = Post.new(title)
  add_post(post)
end

def self.post_count
  @@posttotal.length
end

end
