require 'rspec'

RSpec.describe Calculator do
  describe '.add' do
    context "when input string is empty" do
      it 'returns 0' do
        expect(Calculator.add('')).to eq(0)
      end
    end

    context 'when input has multiple numbers' do
      it 'returns their sum' do
        expect(Calculator.add("1,2")).to eq(3)
      end
    end

    context 'when input contains newlines between numbers' do
      it 'handles newlines and returns the sum' do
        expect(Calculator.add("1\n9,8")).to eq(18)
      end
    end

    context 'when a custom delimiter is included' do
      it 'uses the custom delimiter to calculate the sum' do
        expect(Calculator.add("//;\n1;2;3")).to eq(6)
        expect(Calculator.add("//|\n4|5|6")).to eq(15)
      end
    end

    context 'when input contains negative numbers' do
      it 'raises an exception for a single negative number' do
        expect { Calculator.add("-1") }.to raise_error("negative numbers not allowed -1")
      end

      it 'raises an exception with all negative numbers listed' do
        expect { Calculator.add("1,-2,3,-4") }.to raise_error("negative numbers not allowed -2, -4")
      end
    end
  end
end