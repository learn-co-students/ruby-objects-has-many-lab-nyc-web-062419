class Song
    @@all = []
    def initialize(name)
        @name = name
        @@all << self
    end
    def name
        @name
    end
    def artist=(artist)
        @artist = artist
    end
    def artist
        @artist
    end
    def artist_name
        if self.artist == nil
            nil
        else
            self.artist.name
        end
    end
    def self.all
        @@all
    end
 end
 
 