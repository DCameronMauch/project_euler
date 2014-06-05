#!/usr/bin/env ruby

require 'awesome_print'
require 'prime'

require File.join File.dirname(__FILE__), 'library'

list = []

Prime.each do |prime|
	next if prime < 10
	break if prime > 999999
	a = true
	c = prime
	d = prime
	while (a && (c > 10)) do
		c = c.shift
    a = a && Prime.prime?(c)
	end
	while (a && (d > 10)) do
		d = d.pop
    a = a && Prime.prime?(d)
	end
  list.push prime if a 
end

ap list.reduce(&:+)

