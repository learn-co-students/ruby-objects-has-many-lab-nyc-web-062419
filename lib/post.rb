class Post
    attr_accessor :title, :author
    @@all = []

    def initialize(title)
        @title = title
        @Author = Author.name
        Post.all << self
    end

    def self.all
        @@all
    end

    def self.Author
        Author.posts
    end

    def author_name
        if self.author == nil
            nil
        else
            self.author.name
        end
    end
    
    

end