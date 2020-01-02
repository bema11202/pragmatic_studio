require 'rspec'
require 'rspec/expectations'
require 'shoulda'
require_relative 'player'

describe Player do
  before do
    @player = Player.new("larry", 150)
  end


  context 'when the initial health value is >= 150' do
    it 'is strong' do
      expect(@player).to be_strong
    end
  end

  context 'wimpy player' do
    before do
      @player = Player.new("larry", 100)
    end

    it 'is wimpy' do
      expect(@player).not_to be_strong
    end
  end
end