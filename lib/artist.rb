class Artist

    attr_accessor :name
    attr_reader :songs

    @@all_songs = []

    def initialize (name)
        @name = name
        @songs = []
    end

    def self.all
        @@all_songs
    end

    def self.songs
        @songs
    end

    def add_song(song)
        song.artist = self
        self.songs << song
        self.class.all << song
    end

    def add_song_by_name (name)
        song = Song.new (name)
        self.add_song(song)
    end

    def self.song_count
        @@all_songs.length
    end

end