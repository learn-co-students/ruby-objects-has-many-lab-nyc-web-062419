require "pry"

class Artist
  attr_accessor :name, :song, :songs

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    song.artist = self
    @songs << song
  end

  def add_song_by_name(title)
    s = Song.new(title)
    s.artist = self
    @songs << s
  end

  def self.song_count
    Song.all.length
  end
end
