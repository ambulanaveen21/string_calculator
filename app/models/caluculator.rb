class Caluculator < ApplicationRecord
	def self.add(str)
		return 0 if str.empty?

		if str.start_with?('//')
			delimiter, numbers_part = str.split("\n", 2)
    	numbers = numbers_part.split(';')
  	else
    	numbers = str.split(/,|\n/)
  	end

  	numbers.map(&:to_i).sum
	end
end
