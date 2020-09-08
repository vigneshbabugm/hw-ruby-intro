# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  # YOUR CODE HERE
  arr.inject(0, :+)
end

def max_2_sum arr
  # YOUR CODE HERE
  if arr.length() < 2
    arr.inject(0,:+)
  else
    arr.max(2).reduce(:+)
  end
end

def sum_to_n? arr, n
  # YOUR CODE HERE
  a=0
  b=arr.length()-1
  ar=arr.sort()
  while a<b 
    c=ar[a]+ar[b]
    if c==n
      return true
    elsif c<n
      a=a+1
    else
      b=b-1
    end
  end
  return false
end

# Part 2

def hello(name)
  # YOUR CODE HERE
  return "Hello, "+name
end

def starts_with_consonant? s
  # YOUR CODE HERE
  s=s.downcase()
  check="bcdfghjklmnpqrstvwxyz"
  len=s.length
  if len < 1
    return false
  end
  if check.index(s[0])
    return true
  else
    return false
  end
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
  if s.length <1
    return false
  end
  if (s.chars.all? {|x| x =~ /[01]/})
    if (s.to_i(10) % 4 == 0)
      return true
    else
      return false
    end
  else
    return false
  end
end
  

# Part 3

class BookInStock
  #YOUR CODE HERE
  def initialize(isbn,price)
    a=isbn.is_a?String
    b=isbn.length
    if a == false
      raise ArgumentError, "ISBN is not a string"
    end
    if b < 1
      raise ArgumentError, "ISBN Cannot be empty"
    end
    
    if price <=0
      raise ArgumentError, "Price cannot be less than or equal to 0"
    end
    
    @isbn =isbn
    @price=price
    
  end
  
  def isbn
    @isbn
  end
  
  def price
    @price
  end
  
  def isbn=(isbn_)
    @isbn=isbn_
  end
  
  def price=(price_)
    @price=price_
  end
  
  def price_as_string
    return "$"+ "%.2f"%@price
  end
end
