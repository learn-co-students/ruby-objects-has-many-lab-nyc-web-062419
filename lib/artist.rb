

class Artist

    @@artists = []

    def initialize(name)
        @name = name
        @songs = []
        @@artists << self
    end

    attr_accessor :name, :songs


    def add_song(song)

        @songs << song
        song.artist = self

    end

    def add_song_by_name(name)

        song = Song.new(name)
        self.add_song(song)

    end


    def self.artists
        @@artists
    end


    def self.song_count

        count = 0
        self.artists.each do |artist|
            count += artist.songs.length
        end
        count

    end



end