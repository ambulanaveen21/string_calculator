require 'rspec'

Rspec.describe Calucultor do 
	describe 'sum' do
		context "when input string have empty" do 
			it 'returns output as 0' do 
				expect(Calucultor.sum('')).to eq (0)
			end
		end

		context "when input have multiple numbers" do
			it "returns sum of numbers" do 
				expect(Calucultor.sum('1,2')).to eq(3)
			end
		end
	end
end