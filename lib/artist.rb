require 'pry'
class Artist
    attr_accessor :name
    @@all = []
    
    def initialize(name)
    @name = name
    Artist.all << self
    end

    def add_song(song)
        song.artist = self
    end

    def add_song_by_name(song_name)
        song = Song.new(song_name)
        song.artist = self
    end

    def songs
        Song.all.select {|song| song.artist == self}
    end

    def self.song_count
       Song.all.count
    end

    def self.all
        @@all
    end
end


# def appointments 
#     Appointment.all.select do |appointment_instance|
#         appointment_instance.doctor == self
#     end
# end