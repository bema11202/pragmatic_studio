require 'rspec'
require 'rspec/expectations'
require_relative 'movie'

describe Movie do
  before do
    @movie = Movie.new("goonies", 10)
    # Do nothing
  end

  after do
    #do something
  end

  context 'when it has a rank' do
    it 'has a capitalized title' do

      expect(@movie.title).to eql "Goonies"
    end

    it 'has an intialized rank' do
      #movie = Movie.new("goonies", 10)
      #movie.rank.should == 10
      expect(@movie.rank).not_to be_falsey
    end

    it 'has a string representation' do
      movie = Movie.new("goonies", 10)
      movie.to_s.should == "Goonies has a rank of 10."
    end
    context 'when it does not have a rank'
      it 'does not have and initial rank' do
        movie = Movie.new("ghostbusters")
        expect(movie.rank).to eql 0
      end
      it 'has a capitalized titile here as well' do
        expect(@movie.title).to eql "Goonies"
      end
  end
end