require 'pry'

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
		Song.all.length
	end

end

























# class Artist

# 	attr_accessor :name, :songs, :song, :artist

# 	def initialize(name)
# 		@name = name
# 	end
	
# 	def songs
# 		Song.all.select do |song_instance|
# 			song_instance.artist == self
# 		end	
# 	end

# 	def add_song(song)
# 		@@all = []

# 		Song.new(song)
# 	end

# 	def self.all
# 		@@all 
# 	end

# end