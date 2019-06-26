

class Author

    @@all = []

    def self.all
        @@all
    end

    def initialize(name)
        @name = name
        @posts = []
        @@all << self
    end

    attr_accessor :name, :posts

    def add_post(post)

        post.author = self
        self.posts << post

    end

    def add_post_by_title(title)

        post = Post.new(title)
        add_post(post)

    end

    def self.post_count

        count = 0
        self.all.each do |author|
            count += author.posts.length
        end
        count

    end



end