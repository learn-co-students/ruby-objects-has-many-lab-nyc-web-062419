require "pry"

class Artist
  attr_accessor :name, :songs

  @@artists = []

  def initialize(name)
    @name = name
    @songs = []
    @@artists << self
  end

  def self.all_artists
    @@artists
  end

  def add_song(song)
    @songs << song
    song.artist = self
  end

  def add_song_by_name(song_name)
    new_song = Song.new(song_name)
    add_song(new_song)
  end

  def self.song_count
    song_count = 0
    self.all_artists.each do |artist|
      song_count += artist.songs.length
    end
    song_count
  end
end
