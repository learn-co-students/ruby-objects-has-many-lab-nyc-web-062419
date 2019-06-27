require "pry"

class Artist
  attr_accessor :name, :song

  def initialize(name)
    @name = name
  end

  def songs
    Song.all.select do |song|
      song.artist == self
    end
  end

  def add_song(song)
    song.artist = self
    # binding.pry
  end

  def add_song_by_name(name)
    # song = Song.new(name)
    # song.artist = self
    Song.new(name).artist = self
    #I can do it both ways
  end

  def self.song_count
    song = Song.all
    song.count
  end
end
