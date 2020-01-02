require 'rspec'
require_relative 'game'
require_relative 'player'


describe Game do
  before do
    @game = Game.new("Knuckleheads")
    @initialize_health = 150
    @player = Player.new('moe', @initialize_health)
    @game.add_player(@player)
  end

  after do
    # Do nothing
  end

  context 'with a health greater than 150' do
    it 'w00ts the player if a high number is rolled' do
      Die.any_instance.stub(:roll).and_return(5)

      @game.play
      @player.health.should == @initialize_health + 15
    end
  end
  context 'with a health of 100 or less' do
    it 'skips the player if a medium number is rolled' do
      Die.any_instance.stub(:roll).and_return(3)

      @game.play

      @player.health.should == @initial_health
    end
  end
  context 'lower health score' do
    it "blams the player if a low number is rolled" do
      Die.any_instance.stub(:roll).and_return(1)

      @game.play

      @player.health.should == @initial_health - 10
    end
  end
end