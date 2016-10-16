require_relative 'spec_helper'
require 'rspec'
require_relative 'lib/multiplication_table'

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

    context 'testing with num = 4' do
      it 'prints a 4 x 4 table' do
        printed = capture_stdout do
          @multiplication_table.print_table(4)
        end
        printed.should eq("      2    3    5    7   \n\n2  |  4    6    10   14  \n\n3  |  6    9    15   21  \n\n5  |  10   15   25   35  \n\n7  |  14   21   35   49  \n\n")
      end
    end

    context 'testing with num = 2' do
      it 'prints a 2 x 2 table' do
        printed = capture_stdout do
          @multiplication_table.print_table(2)
        end
        printed.should eq("      2    3   \n\n2  |  4    6   \n\n3  |  6    9   \n\n")
      end
    end

  end
  
end