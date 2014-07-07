#!/usr/bin/env ruby

require 'awesome_print'

ap (0 .. 9).to_a.permutation.to_a[999999].reduce(''){|memo,digit| memo + digit.to_s}.to_i
