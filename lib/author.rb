require 'pry'

class Author

	attr_accessor :name, :posts, :post, :title

	def initialize(name)
		@name = name
		@posts = []
	end

	def posts
		Post.all.select do |post_instance|
			post_instance.author == self
		end
	end

	def add_post(post)
		@posts << post
		post.author = self
	end

	def add_post_by_title(title)
		post = Post.new(title)
		@posts << title
		post.author = self
	end

	def self.post_count
		Post.all.length
	end

end