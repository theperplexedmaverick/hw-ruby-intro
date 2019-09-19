# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  sum = 0
  arr.each do |num|
    sum += num
  end
  return sum
end

def max_2_sum arr
  if arr.length == 0 then
    return 0
  elsif arr.length == 1 then
    return arr[0]
  end
  arr.sort!
  arr.reverse!
  return arr[0] + arr[1]
end

def sum_to_n? arr, n
  arr.sort!
  i = 0
  j = arr.length-1
  while i < j
    total = arr[i] + arr[j]
    if total == n then
      return true
    elsif total < n then
      i = i+1
    else
      j =j-1
    end
  end
  return false
end

# Part 2

def hello(name)
  return "Hello, #{name}"
end

def starts_with_consonant? s
  if s =~ /^[b-df-hj-np-tv-z]/i then true else false end
end

def binary_multiple_of_4? s
  if s.match(/\A[01]+\Z/) == nil
    return false
  else
    decimal_value=s.to_i(2)
    if(decimal_value % 4 == 0 )
      return true
    else
      return false
    end
  end
  
end

# Part 3

class BookInStock
  attr_accessor :isbn, :price
  def initialize(isbn, price)
    @isbn, @price = isbn, price
    if isbn.empty?  
      raise ArgumentError.new("ISBN number is empty")
    end
  
    unless price>0
      raise ArgumentError.new("Price is less than or equal to zero")
    end
    
  end

  # format price as two decimal point string
  def price_as_string
    return "$%0.2f" % @price
  end
end
