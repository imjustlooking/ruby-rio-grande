require_relative 'spec_helper'
require_relative '../lib/bluray'

describe Bluray do
  before(:context) do
    # initialize item
    @br = Bluray.new('Avatar',100,60,'James Cameron','Gabriel Lu')
  end

  # check initialization
  describe 'Initialization' do
    it 'should be a bluray' do
      expect(@br).to be_instance_of(Bluray)
    end

    # check that it is an extended from Item
    # check that it is an instance of Bluray
    it 'is assigned run time' do
      expect(@br.run_time).to eq(60)
    end

    it 'is assigned director' do
      expect(@br.director).to eq('James Cameron')
    end

    it 'is assigned producer' do
      expect(@br.producer).to eq('Gabriel Lu')
    end
  end
  # check getters and setters
  describe 'getters and setters' do
    it 'assigns and reads the run time' do
      @br.run_time = 69
      expect(@br.run_time).to eq(69)
    end

    it 'assigns and reads the director' do
      @br.director = 'Jack Neo'
      expect(@br.director).to eq('Jack Neo')
    end

    it 'assigns and reads the producer' do
      @br.producer = 'Jim Fed'
      expect(@br.producer).to eq('Jim Fed')
    end
  end
end
