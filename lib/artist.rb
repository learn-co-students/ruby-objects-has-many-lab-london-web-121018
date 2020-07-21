require 'pry'
class Artist
  attr_accessor :name, :songs
  @@songs = []

  def initialize(name)
    @songs = []
    @name = name

  end

  def add_song(song)
    @songs << song
    song.artist = self
    @@songs << song
  end

  def add_song_by_name(song_name)
    song = Song.new(song_name)
    @songs << song
    song.artist = self
    @@songs << song
  end

  def self.song_count
    @@songs.length
  end
end
