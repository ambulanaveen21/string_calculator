require 'rspec'

Rspec.describe Calucultor do 
	describe 'sum' do
		context "when input string have empty" do 
			it 'returns output as 0' do 
				expect(Calucultor.add('')).to eq (0)
			end
		end

		context 'when input have multiple numbers' do
			it 'returns sum' do 
				expect(Calucultor.add("1,2")).to eq(3)
			end
		end

		context 'when input contains newlines between numbers' do
			it 'removes new lines and returns sum' do
				expect(Calucultor.add("1\n9,8")).to eq(18)
			end
		end

		context 'when a custom delimiter is included' do
      it 'removes the custom delimiter to calculate the sum' do
        expect(Calculator.add("//;\n1;2;3")).to eq(6)
        expect(Calculator.add("//|\n4|5|6")).to eq(15)
      end
    end
	end
end