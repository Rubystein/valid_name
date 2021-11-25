def is_valid_name(str)
  parts = str.split(" ")
  if parts.length < 2
    false
  end
  parts.each do |part|
    unless is_capitalized(part)
      false
    end
  end
  true
end

def is_capitalized(word)
  if word[0] == word[0].upcase && word[1..-1] == word[1..-1].downcase
    true
  else
    false
  end
end

puts is_valid_name("Kush Patel")       # => true
puts is_valid_name("DanieL")           # => false
puts is_valid_name("Robert Downey Jr") # => true
puts is_valid_name("ROBERT DOWNEY JR") # => false

# I will learn how to understand why my code return me all true statements