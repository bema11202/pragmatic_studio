require_relative 'movie'
class Player

  attr_reader :rank, :health
  attr_accessor :name


  def initialize(name, rank = 100)
    @name = name.capitalize
    @rank = rank
  end

  def to_s
    "I'm #{@name} with a health rank of #{@rank} and a score of #{score}."
  end

  def blam
    puts "#{@name} got blammed!"
  end

  def w00t
    puts "#{@name} got w00ted!"
  end

  def rank_plus
    puts "I'm #{@name} with a health of #{@rank + 5}"
  end

  def rank_minus
    puts "I'm #{@name} with a health of #{@rank - 10}"
  end

  def score
    @rank + @name.length
  end

  def strong?
    if @rank <= 100
      false
    else
      true
    end
  end

end

if __FILE__ == $0
player = Player.new("moe")
puts player.name
puts player.health
player.w00t
puts player.health
player.blam
puts player.health
  end