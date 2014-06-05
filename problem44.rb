#!/usr/bin/env ruby

require 'awesome_print'
#require 'prime'

#require File.join File.dirname(__FILE__), 'library'

def p n
	(n * ((3 * n) - 1) ) / 2
end

list1 = {}
list2 = {}
list3 = []

(1 .. 9999).each do |value1|
	value2 = p value1

	list1[value1] = value2
	list2[value2] = value1
end

list1.keys.each do |value1|
	list1.keys.each do |value2|
		sum = list1[value1] + list1[value2]
		if list2[sum]
			diff = (list1[value1] - list1[value2]).abs
			if list2[diff]
				list3.push diff
			end
		end
	end
end

ap list3.uniq
