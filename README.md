# Collatz Sequence
Solution and Tests to the Columbia University

## Project structure
- `lib/collatz_sequence.rb`  - contains solution
- `spec/collatz_sequence_spec.rb` - includes tests

## Solution
- The method `determine_collatz_sequence` accepts as an argument number n and returns and an array with a sequence.
- The method `determine_collatz_sequence_print` accepts as an argument an array witha a sequence and prints it in a console.
- The method `collect_all_collatz_sequences_length_for` accepts as an argument number n and returns an array of hashes where
hash is a single key - value pair. Key is n - number and value is a length of the sequence.
- The method `find_the_longest_sequence` accepts as an argument an array with hashes and returns an array with two elements. 
The first element is a n - number and the second a length of the sequence.

## Test execution
- Run `bundle install`
- Open terminal window
- From the project directory run `rspec`


