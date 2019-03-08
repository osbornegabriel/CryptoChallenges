require_relative 'challenge-1'

# New fun method, should you wish to use a base 10 str instead of binary for a future xor:

def xor_digits(str_one, str_two)
  xor_str = ''
  str_one.each_with_index |str,i|
    xor_str << (str[i].to_i ^ str_two[i].to_i).to_s
  end
end

## Original Solution

def xor(bin_str_one, bin_str_two)
  new_bin_str = ''
  bin_str_one.length.times {|i| bin_str_one[i] == bin_str_two[i] ? new_bin_str << '0' : new_bin_str << '1'}
  new_bin_str
end