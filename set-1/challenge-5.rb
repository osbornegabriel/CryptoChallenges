require_relative 'challenge-4'

BASE10_TO_ASCII = ((65..90).to_a.zip('A'..'Z') + (97..122).zip('a'..'z') + [[20, ' ']] + [[96, "'"]]).to_h

def ascii_to_binary(string)
  hex_string = convert_text_to_hex(string)
  HEX.to_bin(hex_string)
end

def convert_text_to_hex(string)
  string.chars.map{|char| TEXT_TO_HEX[char]}.join
end

def sequential_xor(key_collection, string)
  keys = key_collection.chars.map{|key| ascii_to_binary(key)}
  bin_string = ascii_to_binary(string)
  binary_sets = bin_string.scan(/.{8}/)
  binary_sets = binary_sets.map.with_index do |bits, i|
    xor(keys[i % keys.size], bits)
  end
  binary_sets.join
end

# {a: 1, b: 2}
# {a:4, b: 1}

# 1.merge(2) {|k,a,b|  a*b}