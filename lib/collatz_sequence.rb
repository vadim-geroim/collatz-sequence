# Formula for the Collatz sequence
# n → n/2 (n is even)
# n → 3n + 1 (n is odd)

# This method returns an array with Collatz sequence for the given n-number
def determine_collatz_sequence(n)
  seq = []
  seq << n
  while (n != 1) do
    n.even? ? n =  n/2 : n = 3*n + 1
    seq << n
  end
  seq
end

# This method prints in a console Collatz sequence
def determine_collatz_sequence_print(res)
  puts "The Collatz Sequence is #{res}"
  puts "and length is #{res.length}"  
end

# This method collect all sequences lenght for n
def collect_all_collatz_sequences_length_for(n)
  sequenses = []
  for i in 1..n do
    sequenses << {i => determine_collatz_sequence(i).length}
  end
  sequenses
end

# This method returns the number and the sequence length
def find_the_longest_sequence(data)
  max = 0
  number = 1
  data.each_with_index do |element, index|
    max = element[index + 1]
    number = index + 1
    if element[index + 1] > max
      max = element[index + 1] 
      number = index + 1
    end
  end
  return [number, max]
end