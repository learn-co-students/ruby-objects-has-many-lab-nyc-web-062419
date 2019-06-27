
class Artist

    attr_accessor :name, :songs, :song

    def initialize(name)
        @name = name
        @songs = []
    end

    def songs
        Song.all.select do |song_instance|
            song_instance.artist == self
        end
    end

    def add_song(song)
        @songs << song
        song.artist = self
    end

    def add_song_by_name(song)
        song = Song.new(song)
        @songs << song
        song.artist = self
    end

    def self.song_count
        Song.all.count
    end





end
