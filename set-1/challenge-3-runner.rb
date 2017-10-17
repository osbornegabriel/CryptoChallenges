require_relative 'challenge-3'

=begin

  Single-byte XOR cipher
  The hex encoded string:

  1b37373331363f78151b7f2b783431333d78397828372d363c78373e783a393b3736
  ... has been XOR'd against a single character. Find the key, decrypt the message.

  You can do this by hand. But don't: write code to do it for you.

  How? Devise some method for "scoring" a piece of English plaintext. Character frequency is a good metric. Evaluate each output and choose the one with the best score.

  Achievement Unlocked
  You now have our permission to make "ETAOIN SHRDLU" jokes on Twitter.

=end

hex_string = '1b37373331363f78151b7f2b783431333d78397828372d363c78373e783a393b3736'
p bin_string = HEX.to_bin(hex_string)

p pairings = count_values(2, hex_string)
p keys = pairings.keys
cyphers = find_cyphers(hex_string)

new_bin_strings = []
cyphers.each{|cypher| new_bin_strings << xor_cypher(cypher, bin_string)}
new_bin_strings.map!{|string| HEX.from_bin(string)}
new_bin_strings[-1]
p new_bin_strings[-1].gsub(/../, HEX_TO_TEXT)