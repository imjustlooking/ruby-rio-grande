# You are on your own... good luck.
require_relative 'spec_helper'
require_relative '../lib/digital_item'

describe Digital_item do
  before(:context) do
    @di = Digital_item.new('King Kong', 90)
  end

  describe 'Initialization' do
    it 'should be a digital item' do
      expect(@di).to be_instance_of(Digital_item)
    end

    it 'should start with quantity 1' do
      expect(@di.quantity).to eq(1)
    end

    it 'should remain at quantity 1 after sell' do
      @di.sell(1)
      expect(@di.quantity).to eq(1)
    end

    it 'should remain at quantity 1 after stock' do
      @di.stock(1)
      expect(@di.quantity).to eq(1)
    end
  end
end
