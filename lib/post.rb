require "pry"

class Post
  attr_accessor :title, :author

  @@all = []

  def initialize(title)
    @title = title
    @author = nil
    @@all << self
  end

  def self.all
    @@all
  end

  def author=(author)
    @author = author
  end

  def author_name

    #binding.pry
    if self.author == nil
      return nil
    else
      self.author.name
    end
  end
end
