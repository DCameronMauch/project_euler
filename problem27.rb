#!/usr/bin/env ruby

require 'awesome_print'
require 'prime'

#require File.join File.dirname(__FILE__), 'library'

maxcount = 0
maxproduct = 0

(-999..999).each do |a|
	(-999..999).each do |b|
    count = 0
		n = 0
		loop do
			value = (n ** 2) + (a * n) + b
      if Prime.prime? value
				n += 1
				count += 1
			else
				break
			end
		end
		if count > maxcount
			maxcount = count
			maxproduct = a * b
		end
	end
end

puts maxproduct
