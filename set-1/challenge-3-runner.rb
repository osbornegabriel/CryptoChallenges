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

potential_hex_strings = translations(hex_string)

p top_translation(potential_hex_strings)

# => "Cooking MCs like a pound of bacon"