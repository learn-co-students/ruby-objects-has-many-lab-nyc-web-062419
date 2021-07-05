class Post

    @@all = []
    def initialize(name)
        @name = name
        @@all << self
    end
    def name
        @name
    end
    def title
        @name
    end
    def author=(author)
        @author = author
    end
    def author
        @author
    end
    def author_name
        if self.author == nil
            nil
        else
            self.author.name
        end
    end
    def self.all
        @@all
    end
end