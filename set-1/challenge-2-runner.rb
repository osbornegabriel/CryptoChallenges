require_relative 'challenge-2'

=begin
  Fixed XOR
  Write a function that takes two equal-length buffers and produces their XOR combination.

  If your function works properly, then when you feed it the string:

  1c0111001f010100061a024b53535009181c
  ... after hex decoding, and when XOR'd against:

  686974207468652062756c6c277320657965
  ... should produce:

  746865206b696420646f6e277420706c6179
=end

hex = Decoder.new(4, ('0'..'9').to_a + ('a'..'f').to_a)

bin_one = hex.to_bin('1c0111001f010100061a024b53535009181c')
bin_two = hex.to_bin('686974207468652062756c6c277320657965')

new_binary = xor(bin_one, bin_two)
p hex.from_bin(new_binary)

# => "746865206b696420646f6e277420706c6179"