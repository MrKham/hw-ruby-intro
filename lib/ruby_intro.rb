# When done, submit this entire file to the autograder.

# Part 1

def sum (arr)
  tong = 0
  if arr.empty?
    return 0
  end
  if arr.length == 1
    return arr[0]
  end
  arr.each do |x|
    tong = tong + x
  end
  return tong
end

def max_2_sum(array)
    return 0 if array.empty?
    return array[0] if array.length == 1
    tong  = array.sort
    tong[-1] + tong[-2]
end

def sum_to_n?(array, n)
    return false if array.empty? || array.length == 1

    (0...array.length).each { |x| 
        (x+1...array.length).each { |y| 
            return true if array[x] + array[y] == n}
    }
    return false
end

# Part 2

def hello(name)
  return "Hello, #{name}"
end

def starts_with_consonant? (s)
  # if s[0] == "a" || s[0] == "A" || s[0] == "o" || s[0] == "O" || s[0] == "i" || s[0] == "I" || s[0] == "u" || s[0] == "U" || s[0] == "e" || s[0] == "E"
  #   return true
  # else
  #   return false
  # end
  s=~ /^[a-z&&[^aeiou]]/i
end

def binary_multiple_of_4?(s)
	if s =~ /\b[01]+\b/
		return s.to_i(2) % 4 == 0 ? true : false
	else
		return false
	end
end
  # YOUR CODE HERE


# Part 3

class BookInStock
  def initialize(isbn,price)
    raise ArgumentError if isbn.empty?
    raise ArgumentError if price <= 0
    @isbn = isbn
    @price = price
  end
  attr_accessor :isbn
  attr_accessor :price
  def price_as_string
      "$#{sprintf("%.2f",@price)}"
  end
# YOUR CODE HERE
end
