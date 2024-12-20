class Caluculator < ApplicationRecord
	def self.add(str)
		return 0 if str.length < 0
		sum = 0
		numbers = str.gsub("\n", ',')
		numbers = numbers.split(",")
		numbers.each do |num|
			sum += num.to_i
		end
		sum
	end
end

Caluculator.sum("1,\n2,2")
