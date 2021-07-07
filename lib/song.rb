

class Song

    @@all = []

    attr_accessor :artist, :name

    def initialize(name)
        @name = name
        @@all << self
        @artist = nil
    end

    def self.all
        @@all
    end

    def artist_name
        
        if self.artist == nil
            nil
        else
            self.artist.name
        end

    end

    









end