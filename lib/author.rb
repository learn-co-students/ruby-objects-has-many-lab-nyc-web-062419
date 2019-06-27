class Author
    attr_accessor :name

    @@post = []

    def initialize(name)
        @name = name
    end
    
    def posts
        @@post
    end

    def add_post(title)
        @@post << title
        title.author = self
    end

    def add_post_by_title(title)
       title = Post.new(title)
       add_post(title)
    end

    def self.post_count
        @@post.count
    end
end