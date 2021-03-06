class Movie

  attr_accessor :title
  attr_reader :rank

  def initialize(title, rank=0)
    @title = title.capitalize
    @rank = rank
  end

  def thumbs_up
    @rank += 1
  end

  def thumbs_down
    @rank -= 1
  end

  def to_s
    "#{@title} has a rank of #{@rank}."
  end
end

class Playlist

  def initialize(name)
    @name = name
    @movies = []
  end

  def add_movie(a_movie)
    @movies << a_movie
  end

  def play
    puts "#{@name}'s playlist:"
    puts @movies
    @movies.each do |movie|
      movie.thumbs_up
      movie.thumbs_up
      movie.thumbs_down
      puts movie
    end
  end

end

if __FILE__ == $0

movie = Movie.new("Goonies", 10)
movie.thumbs_up
movie.thumbs_up
movie.thumbs_down
puts movie
end