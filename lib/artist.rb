require 'pry'

class Artist

attr_accessor :name, :songs

@@songtotal = []

def initialize (name)
  @name = name
  @songs = []

end

def add_song(song)
  @songs << song
  @@songtotal << song
  song.artist = self
end

def add_song_by_name(name)
  song = Song.new(name)
  add_song(song)
end

def self.song_count
  @@songtotal.length
end



end
