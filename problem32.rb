#!/usr/bin/env ruby

require 'awesome_print'

require File.join File.dirname(__FILE__), 'library'

list = []
range = (1 .. 9).to_a

range.permutation(9).to_a.each do |combo|
	a = combo[0..0].to_i
	b = combo[1..4].to_i
	c = a * b
	d = c.to_a.sort
	e = combo[5..8].sort
	list.push c if d == e

	a = combo[0..1].to_i
	b = combo[2..4].to_i
	c = a * b
	d = c.to_a.sort
	e = combo[5..8].sort
	list.push c if d == e
end

ap list.uniq.sort.reduce(&:+)
