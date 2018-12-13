class Post

attr_accessor :title, :author

@@all = []

def initialize (title)
  @title = title
  @author = Author
  @@all << self
end

def self.all
  @@all
end

def author_name
  if @author.name == "Author"
    nil
  else
    @author.name
  end
end


end
