def proper_divisors int
	list = [1]
	(2 .. Math.sqrt(int).floor).each do |divisor|
		if int % divisor == 0
			list.push divisor, int / divisor
		end
	end
	list.sort!
	list.uniq!
	def list.sum
		self.reduce(&:+)
	end
	list
end

class Array
	def to_i
		self.map{|x| x.to_s}.join.to_i
	end
	def rotate
		val = self.shift
		self.push val
	end
end

class Integer
	def to_a
		self.to_s.split('').map{|x| x.to_i}
	end
  def factorial
    f = 1; for i in 1..self; f *= i; end; f
  end
	def rotate
		self.to_a.rotate.to_i
	end
	def shift
    val = self.to_a
		val.shift
		val.to_i
	end
	def pop
		val = self.to_a
		val.pop
		val.to_i
	end
end

def palindrom value
	value = value.to_s
	len = value.length
	mid = len / 2
	left = value[0 .. (mid - 1)]
	right = value[(len - mid) .. (len - 1)]
	left == right.reverse
end
