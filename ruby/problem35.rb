#!/usr/bin/env ruby

require 'awesome_print'
require 'prime'

require File.join File.dirname(__FILE__), 'library'

list = {}
list.default = false

Prime.each do |prime|
	break if prime > 1000000
	list[prime] = true
end

count = 0

list.keys.each do |prime|
	a = true
	b = prime.to_a
  (b.length - 1).times do
		b = b.rotate
		c = b.to_i
		a = a && list[c]
	end
	if a
    count += 1
		puts prime
	end
end

puts count

