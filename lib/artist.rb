require'pry'
class Artist

  attr_accessor :name, :new_song, :songs


  def initialize(name)
    @songs = []
    @name = name
  end

  def add_song(new_song)
    self.songs << new_song
    new_song.artist = self
  end

  def add_song_by_name(song_name)
    @new_song = Song.new(song_name)
    add_song(new_song)
  end

  def self.song_count
    Song.all.count
  end


end

# class Song
#
#   attr_accessor :title, :artist
#
#   @@all = []
#
#   def initialize(title)
#     @title = title
#     @@all << self
#   end
#
#   def self.all
#     @@all
#   end
#
# end
#
# binding.pry
# 0
