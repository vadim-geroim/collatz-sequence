require 'spec_helper'
  describe "Collatz sequence implementation" do
    it 'should validate Collatz sequence for number seven' do
      n = 7
      res = determine_collatz_sequence(n)
      expect(res).to eq [7, 22, 11, 34, 17, 52, 26, 13, 40, 20, 10, 5, 16, 8, 4, 2, 1]
    end

    it 'should find the number with the longest Collatz sequence' do
      n = 10000
      data = collect_all_collatz_sequences_length_for(n)
      res = find_the_longest_sequence(data)
      expect(res).to eq [10000, 30] # 10000 is a number and 30 is a sequence length
    end
  end

