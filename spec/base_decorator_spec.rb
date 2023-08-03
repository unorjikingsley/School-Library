require_relative 'spec_helper'

describe BaseDecorator do
  before :each do
    @decorator = BaseDecorator.new('Afghanistan')
  end

  context 'correct_name' do
    it 'Check if nameable exists' do
      expect(@decorator.nameable).to eq 'Afghanistan'
    end
  end
end
