class Caluculator < ApplicationRecord
	def self.sum(str)
		return 0 if str.length < 0
		sum = 0
		numbers = str.split(",")
		numbers.each do |num|
			sum += num.to_i
		end
		sum
	end
end

Caluculator.sum("1, 2")
