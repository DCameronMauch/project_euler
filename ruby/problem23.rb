#!/usr/bin/env ruby

require 'awesome_print'

require File.join File.dirname(__FILE__), 'library'

list1 = []
list2 = []

(1 .. 28123).each do |int|
	list1.push int if proper_divisors(int).sum > int
end

list1.each do |left|
	list1.each do |right|
		sum = left + right
		break if sum > 28123
		list2.push sum
	end
end

list3 = (1 .. 28123).to_a - list2

ap list3.reduce(&:+)

