#!/usr/bin/env ruby

require 'awesome_print'

require File.join File.dirname(__FILE__), 'library'

sum = 0

(1 .. 999999).each do |value|
	if palindrom value
		base = value.to_s 2
		if palindrom base
			sum += value
		end
	end
end

puts sum
