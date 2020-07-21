require 'pry'

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
    self.artist != nil ? self.artist.name : self.artist
  end
end

#Test Method

song = Song.new("Survivor")
song2 = Song.new("My Heart Will Go On")

drake = Artist.new("Drake")
