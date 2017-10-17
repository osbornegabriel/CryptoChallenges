require_relative 'challenge-2'

def count_values(scan_size, string)
  collection = string.scan(eval("/.{#{scan_size}}/"))
  uniq_vals = collection.uniq
  value_count = uniq_vals.map!{|val| [val, collection.count(val)]}
  value_count.sort_by{|key, value| value}.to_h
end

def find_xor(hex_pair)
  binary_blankspace = '00100000'
  # binary_letter_e = '01100101'
  binary_of_hex_pair = HEX.to_bin(hex_pair)
  xor(binary_blankspace, binary_of_hex_pair)
  # xor(binary_letter_e, binary_of_hex_pair)
end

def xor_cypher(cypher, bin_string)
  binary_sets = bin_string.scan(/.{8}/)
  binary_sets.map!{|set| xor(set, cypher)}
  binary_sets.join
end

HEX_TO_TEXT = ((65..90).to_a.map{|v| v.to_s(16)}.zip('A'..'Z') + (97..122).to_a.map{|v| v.to_s(16)}.zip('a'..'z') + [['20', ' ']]).to_h