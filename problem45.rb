#!/usr/bin/env ruby

require 'awesome_print'
#require 'prime'

#require File.join File.dirname(__FILE__), 'library'

def t n
	(n * (n + 1) ) / 2
end

def p n
	(n * ((3 * n) - 1) ) / 2
end

def h n
	n * ((2 * n) - 1)
end

list1 = []
list2 = []
list3 = []

(1 .. 999999).each do |value|
	list1.push(t value)
	list2.push(p value)
	list3.push(h value)
end

ap list1 & list2 & list3
