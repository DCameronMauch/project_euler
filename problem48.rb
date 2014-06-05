#!/usr/bin/env ruby

require 'awesome_print'
require 'prime'

require File.join File.dirname(__FILE__), 'library'

sum = 0

(1 .. 1000).each do |value|
	sum += value ** value
end

puts sum
