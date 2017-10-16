require_relative 'challenge-1'

def xor(bin_str_one, bin_str_two)
  new_bin_str = ''
  bin_str_one.length.times {|i| bin_str_one[i] == bin_str_two[i] ? new_bin_str << '0' : new_bin_str << '1'}
  new_bin_str
end