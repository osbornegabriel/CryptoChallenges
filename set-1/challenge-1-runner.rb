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

hex = Decoder.new(4, ('0'..'9').to_a + ('a'..'f').to_a)
base64 = Decoder.new(6, ('A'..'Z').to_a + ('a'..'z').to_a + ('0'..'9').to_a + ['+'] + ['/'])

hex_bin = hex.to_bin(starting_string)
p base64.from_bin(hex_bin)