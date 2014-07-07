#!/usr/bin/env ruby

require 'awesome_print'

#require File.join File.dirname(__FILE__), 'library'

def divider(amount,list)
	coin = list.shift
	sum = 0
	(0 .. amount / coin).each do |count|
		remainder = amount - (count * coin)
		sum += if (remainder > 0 )
			if list.length == 0
				1
			else
				divider(remainder, list.clone)
			end
		else
			1
		end
	end
	sum
end

ap divider(200, [200, 100, 50, 20, 10, 5, 2])
