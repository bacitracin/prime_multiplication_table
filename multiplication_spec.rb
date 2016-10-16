require 'rspec'
require_relative 'multiplication_table'

describe MultiplicationTable do

  before do
    @multiplication_table = MultiplicationTable.new
  end

  describe "#is_prime?" do

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


  describe "#pull_primes" do

    context 'testing with num = 10' do
      it 'returns 10' do
        expect(@multiplication_table.pull_primes(10).size == 10)
      end
    end

    context 'testing with num = 2' do
      it 'returns 10' do
        expect(@multiplication_table.pull_primes(2).size == 2)
      end
    end

  end

  describe "#print_table" do

    context 'testing with num = 1' do
      it 'returns a 1 x 1 table' do
        #expect(@multiplication_table.print_table(1) == [2])
      end
    end

  end
  
end
