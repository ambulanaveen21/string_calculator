class Calculator < ApplicationRecord
	def self.add(str)
		return 0 if str.empty?

		if str.start_with?('//')
			delimiter, numbers_part = str.split("\n", 2)
    	numbers = numbers_part.split(';').map(&:to_i)
  	else
    	numbers = str.split(/,|\n/).map(&:to_i)
  	end

  	negative_num = numbers.select {|num| num < 0 }
  	raise "negative numbers not allowed #{negative_num.join(', ')}" unless  negative_num.empty?

  	numbers.sum	
	end
end
