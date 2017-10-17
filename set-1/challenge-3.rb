require_relative 'challenge-2'

def count_values(scan_size, string)
  collection = string.scan(eval("/.{#{scan_size}}/"))
  uniq_vals = collection.uniq
  value_count = uniq_vals.map!{|val| [val, collection.count(val)]}
  value_count.sort_by{|key, value| value}.to_h
end

def find_cyphers(hex_string)
  pairings = count_values(2, hex_string)
  pairings.keys.map{|key| find_xor(key)}
end

def find_top_translation(hex_string)
  potential_hex_strings = translations(hex_string)
  top_translation(potential_hex_strings)
end

def find_xor(hex_pair)
  binary_for_blankspace = '00100000'
  binary_of_hex_pair = HEX.to_bin(hex_pair)
  xor(binary_for_blankspace, binary_of_hex_pair)
end

def hex_to_ascii(hex_string)
  hex_string.gsub(/../, HEX_TO_TEXT)
end

def rank_translations(translations)
  translations.sort_by{|translation| score_translation(translation)}
end

def score_translation(str)
  str.count('ETAOIN SHRDLUetaoinshrdlu')
end

def top_translation(hex_str_collection)
  translations = hex_str_collection.map{|hex_str| hex_to_ascii(hex_str)}
  rank_translations(translations).last
end

def translations(hex_string)
  bin_string = HEX.to_bin(hex_string)
  cyphers = find_cyphers(hex_string)
  new_bin_strings = cyphers.map{|cypher| xor_cypher(cypher, bin_string)}
  new_bin_strings.map{|string| HEX.from_bin(string)}
end

def xor_cypher(cypher, bin_string)
  binary_sets = bin_string.scan(/.{8}/)
  binary_sets.map!{|set| xor(set, cypher)}
  binary_sets.join
end


HEX_TO_TEXT = ((65..90).to_a.map{|v| v.to_s(16)}.zip('A'..'Z') + (97..122).to_a.map{|v| v.to_s(16)}.zip('a'..'z') + [['20', ' ']]).to_h