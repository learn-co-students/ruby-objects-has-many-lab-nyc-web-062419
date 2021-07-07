

class Post

    @@all = []

    def self.all
        @@all
    end

    def initialize(title)
        @title = title
        @author = nil
        @@all << self
    end

    attr_accessor :author, :title

    def author_name

        if self.author == nil
            nil
        else
            self.author.name
        end

    end







end