class Song
    attr_accessor :name, :artist
    @@all = []

    def initialize(name)
        @name = name
        @artist = Artist.name
        Song.all << self
    end

    def self.all
        @@all
    end

    def self.artist
        Artist.songs
    end

    def artist_name
        # binding.pry
        if self.artist == "Artist"
            nil
        else
            self.artist.name    
        end
    end

end