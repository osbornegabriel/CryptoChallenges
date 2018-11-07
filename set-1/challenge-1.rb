

def hex_to_bin(h_str)
  hex_string.hex.to_s(2)
end

# class Decoder
#   attr_accessor :from_bin, :to_bin

#   #Upon intialization, sets the number of bits represented by the base system with bin_rep_length
#   # set_bit_vals is for later easy conversion between binary and base 10
#   # the to_base10 and from_base10 tables are hashes for conversion between the Decoder's base system and base10
#   def initialize(bin_rep_length, values_table)
#     @bin_rep_length = bin_rep_length
#     @bit_vals = set_bit_vals
#     @to_base10 = create_to_base10(values_table)
#     @from_base10 = create_from_base10
#   end

#   def set_bit_vals
#     bit_val = 1
#     bit_vals = []
#     @bin_rep_length.times do
#       bit_vals << bit_val
#       bit_val *= 2
#     end
#     bit_vals.reverse
#   end
#   # ^ formerly hard-coded as: [256, 128,64,32,16,8,4,2,1].last(@bin_rep_length)
#   # Would hard-coded be better because it's faster?

#   def convert_to_base10(num_string)
#     num_chars = num_string.chars
#     num_chars.map!{|char| @to_base10[char]}
#   end

#   def convert_from_base10(base10_vals)
#     base10_vals.map!{|integer| @from_base10[integer]}
#   end

#   def create_to_base10(table)
#     base10_vals = Array(0..table.length)
#     table.zip(base10_vals).to_h
#   end

#   def create_from_base10
#     @to_base10.invert
#   end

#   #Converts base 10 number to its binary representation
#   def to_bits(base10_num)
#     bits = @bit_vals.map do |b|
#       if base10_num >= b
#         base10_num -= b
#         '1'
#       else
#         '0'
#       end
#     end
#     bits.join
#   end

#   #Converts binary number to its base 10 representation
#   def from_bits(bin_num)
#     base10_value = 0
#     @bit_vals.each_with_index do |val,i|
#       base10_value += val if bin_num[i] == '1'
#     end
#     base10_value
#   end

#   # Takes binary string and converts it to an array of base10 values corresponding to the Decoder's bit-representational-length
#   def from_bin(num_string)
#     bin_vals = num_string.scan(eval("/.{#{@bin_rep_length}}/"))
#     base10_vals = bin_vals.map{|bin_val| from_bits(bin_val)}
#     convert_from_base10(base10_vals).join
#   end

#   # Takes a collection of base10 values, converts each to binary strings, and than combines them into a long string of binary digits
#   def to_bin(num_string)
#     digits = convert_to_base10(num_string)
#     digits.map!{|char| to_bits(char)}
#     digits.join
#   end
# end

# HEX_TABLE = ('0'..'9').to_a + ('a'..'f').to_a
# BASE64_TABLE = ('A'..'Z').to_a + ('a'..'z').to_a + ('0'..'9').to_a + ['+'] + ['/']

# HEX = Decoder.new(4, HEX_TABLE)
# BASE64 = Decoder.new(6, BASE64_TABLE)