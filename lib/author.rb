class Author
  attr_accessor :name, :posts

  @@authors = []

  def initialize(name)
    @name = name
    @posts = []
    @@authors << self
  end

  def self.all_authors
    @@authors
  end

  def add_post(post)
    post.author = self
    @posts << post
  end

  def add_post_by_title(post_title)
    new_post = Post.new(post_title)
    add_post(new_post)
  end

  def self.post_count
    post_count = 0
    self.all_authors.each do |author|
      post_count += author.posts.length
    end
    post_count
  end
end
