class Artist
  attr_accessor :name, :genre, :artist
  @@songs = []

  def self.all
    @@songs
  end

  def initialize(name)
    @name = name
  end

  def songs
    @@songs
  end

  def add_song(song)
    self.class.all << song
    song.artist = self
  end

  def add_song_by_name(song_name)
    song = Song.new(song_name)
    song.artist = self
    self.class.all << song
  end

  def self.song_count
    self.all.length
  end
end
