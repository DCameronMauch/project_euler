#!/usr/bin/env ruby

require 'awesome_print'

#require File.join File.dirname(__FILE__), 'library'

index = 1
sum = 1
x = 0
y = 0
offset = 0

loop do
	top = (x + offset) == 0
	bottom = (x - offset) == 0
	left = (y + offset) == 0
	right = (y - offset) == 0
	if top && right
		offset += 1
		y += 1
	elsif !bottom && right
		x += 1
	elsif bottom && !left
		y -= 1
	elsif !top && left
	  x -= 1
	elsif top && !right
	  y += 1
	else
		raise
	end
	index += 1
  sum += index if x.abs == y.abs
	break if x == -500 and y == 500
end

ap sum
