class Song

  attr_accessor :name, :artist

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def artist_name
    song = Song.all.find { |track| track.artist == self.artist }
    if song.artist
      song.artist.name
    elsif song.artist == nil
      return nil
    end
  end

end
