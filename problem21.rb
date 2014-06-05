#!/usr/bin/env ruby

require 'awesome_print'

require File.join File.dirname(__FILE__), 'library'

list1 = {}

(1 .. 10000).each do |int|
	list1[int] = proper_divisors(int).sum
end

list2 = []

list1.each_key do |int|
	other = list1[int]
	unless int == other
		if list1[other] == int
			list2.push int
		end
	end
end

ap list2.reduce(&:+)
