#!/usr/bin/env ruby

require 'awesome_print'

#require File.join File.dirname(__FILE__), 'library'

sum = (1 .. 7).reduce(0) do |sum, size|
	sum += (0 .. 9).to_a.repeated_permutation(size).to_a.reduce(0) do |sum, digits|
		unless digits[0] == 0
			int = digits.join.to_i
			sfp = digits.map do |digit|
				digit ** 5
			end.reduce(&:+)
			if int == sfp
				sum += int
				ap int
			end
		end
		sum
	end
	sum
end

ap sum
