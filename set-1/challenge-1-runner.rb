require_relative 'challenge-1'

=begin
  Convert hex to base64
  The string:

  49276d206b696c6c696e6720796f757220627261696e206c696b65206120706f69736f6e6f7573206d757368726f6f6d
  Should produce:

  SSdtIGtpbGxpbmcgeW91ciBicmFpbiBsaWtlIGEgcG9pc29ub3VzIG11c2hyb29t
  So go ahead and make that happen. You'll need to use this code for the rest of the exercises.
=end

starting_string = "49276d206b696c6c696e6720796f757220627261696e206c696b65206120706f69736f6e6f7573206d757368726f6f6d"

hex = Decoder.new(4, (0..9).to_a + ('a'..'f').to_a)
base64 = Decoder.new(6, ('A'..'Z').to_a + ('a'..'z').to_a + ('1'..'9').to_a + ['+'] + ['/'])

p hex.bin_rep_length
p hex.to_base10
p hex.from_base10

p base64.bin_rep_length
p base64.to_base10
p base64.from_base10

# p starting_string
# p system_to_binary(starting_string, hex_base10_table)