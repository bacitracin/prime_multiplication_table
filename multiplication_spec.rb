require 'rspec'
require_relative 'multiplication_table'

describe MultiplicationTable do

  before do
    @multiplication_table = MultiplicationTable.new
  end

  describe ".is_prime?" do

    context 'testing the number 5' do
      it "returns true" do
        expect(@multiplication_table.is_prime?(5)).to eql(true)
      end
    end

    context 'testing the number 10' do
      it "returns true" do
        expect(@multiplication_table.is_prime?(10)).to eql(false)
      end
    end

  end
  
end
