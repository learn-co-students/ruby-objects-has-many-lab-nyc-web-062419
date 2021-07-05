class Artist

    attr_accessor :name
    def initialize(name) 
        @name = name
        @songs = []
 
    end
 
    def songs
        @songs
 
    end
 
    def add_song(song)
        @songs << song
        song.artist = self
    end
 
    def add_song_by_name(song_name)
        var = Song.new(song_name)
        @songs << var 
        var.artist = self 
    end
 
    def self.song_count
        Song.all.length
    end

    def name 
        @name 
    end 
 
 end 