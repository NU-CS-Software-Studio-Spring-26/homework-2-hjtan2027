# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  sum = 0
  arr.each do |num|
  	sum += num
  end
  sum
end

def max_2_sum arr
  return 0 if arr.empty?
  return arr[0] if arr.length == 1
  sorted = arr.sort
  max = sorted[-1] + sorted[-2]
  return max
end

def sum_to_n? arr, n
  return false if arr.length < 2
  seen = {}
  arr.each do |num|
  	return true if seen[n - num]
  	seen[num] = true
  end
  false
end

# Part 2

def hello(name)
  "Hello, " + name
end

def starts_with_consonant? s
  return false if s.empty?
  first = s[0]
  if first =~ /[a-z]/i && first !~ /[aeiou]/i
  	return true
  end
  false
end

def binary_multiple_of_4? s
  return false unless s =~ /\A[01]+\z/
  s == "0" || s.end_with?("00")
end

# Part 3

class BookInStock
	attr_accessor :isbn, :price
	def initialize(isbn, price)
  	raise ArgumentError if isbn.empty? || price <= 0
  	@isbn = isbn
  	@price = price
  end
  def price_as_string
  	format("$%.2f", price)
  end
end
