#!/usr/bin/env ruby

require 'awesome_print'

#require File.join File.dirname(__FILE__), 'library'

list = {}

def divider a, b, f = []
  c = (a * 10) / b
	d = (a * 10) % b 
	return [] if f.include? d
	e = [ c ]
	if d > 0
		f.push d
		e.push divider d, b, f
	end
	e
end

max = ''
maxint = 0

(2..1000).each do |int|
  inverse = divider 1, int
	local = inverse.join
	if local.length > max.length
		max = local
		maxint = int
	end
end

puts maxint



