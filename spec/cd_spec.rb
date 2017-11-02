require_relative 'spec_helper'
require_relative '../lib/cd'

describe Cd do
  before(:context) do
    # initialize item
    @cd = Cd.new('Good charlotte', 26.50, 20, 'Good charlotte', 60 )

  end

  # check initialization
  describe 'Initialization' do
    it 'should be a cd' do
      expect(@cd).to be_instance_of(Cd)
    end
    # check that it is an extended from Item

    it 'should be an item' do
      expect(@cd).to be_kind_of(Item)
    end

    it 'is assigned a name' do
      expect(@cd.name).to eq('Good charlotte')
    end

    it 'is assigned a price' do
      expect(@cd.price).to eq(26.50)
    end
    # check that it is an instance of Cd

    it 'is assigned tracks' do
      expect(@cd.tracks).to eq(20)
    end

    it 'is assigned an artist' do
      expect(@cd.artist).to eq('Good charlotte')
    end

    it 'is assigned a run time' do
      expect(@cd.run_time).to eq(60)
    end
  end
  # check getters and setters
  describe 'getters and setters' do
    it 'assigns and reads the name' do
      @cd.tracks = 'My love will go on'
      expect(@cd.tracks).to eq('My love will go on')
    end
    it 'assigns and reads the name' do
      @cd.artist = 'Celine Dion'
      expect(@cd.artist).to eq('Celine Dion')
    end
    it 'assigns and reads the run time' do
      @cd.run_time = 40
      expect(@cd.run_time).to eq(40)
    end
  end
end
