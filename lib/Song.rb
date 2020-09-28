require "spec_helper"

class Song
@@all = []

attr_accessor :name, :artist

def initialize(name, artist=nil)
@name = name
@artist = artist
artist = self
end

def self.all
  @@all
end

def self.destroy_all
  @@all.clear
end

def save
  @@all << self
end

def self.create(song)
  song = self.new(song)
  song.save
  song
end

def artist=(artist)
  artist.add_song(self)
end


end