#!/usr/bin/env ruby

require 'awesome_print'
#require 'prime'

require File.join File.dirname(__FILE__), 'library'

list = []

(0 .. 9).to_a.permutation(10).to_a.each do |combo|
	value = combo.to_i
	puts 'found it' if value == 1406357289
	if combo[1..3].to_i % 2 == 0
		if combo[2..4].to_i % 3 == 0
			if combo[3..5].to_i % 5 == 0
				if combo[4..6].to_i % 7 == 0
					if combo[5..7].to_i % 11 == 0
						if combo[6..8].to_i % 13 == 0
							if combo[7..9].to_i % 17 == 0
                list.push value
							end
						end
					end
				end
			end
		end
	end
end

ap list
ap list.reduce(&:+)
