require 'rspec'
require_relative 'multiplication_table'

describe MultiplicationTable do

  describe '.is_prime?' do
    context 'testing the number 5' do
      it "returns true" do
        expect(MultiplicationTable.is_prime?(5)).to eql(true)
      end
    end
  end
  
end
