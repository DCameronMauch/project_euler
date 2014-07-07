#!/usr/bin/env ruby

require 'awesome_print'

require File.join File.dirname(__FILE__), 'library'

x = 3

loop do
	y = x.to_a.map{|z| z.factorial}.reduce(&:+)
	puts x if x == y
	x += 1
end
