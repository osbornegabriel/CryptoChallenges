class Decoder
  attr_accessor :bin_rep_length, :to_base10, :from_base10

  def initialize(bin_rep_length, values_table)
    @bin_rep_length = bin_rep_length
    @to_base10 = create_to_base10(values_table)
    @from_base10 = create_from_base10
  end

  def create_to_base10(table)
    base10_vals = Array(0..table.length)
    table.zip(base10_vals).to_h
  end

  def create_from_base10
    @to_base10.invert
  end
end

# def system_to_binary(sys_string, system_conversion_table)
#   values = sys_string.scan(/../)
#   values.map{}
#   # sys_string.gsub(/./, hex_base10_table)
# end

# def binary_to_system

# end

# def hex_base10_table
#   hex_vals = (0..9).to_a + ('a'..'f').to_a
#   base10_vals = Array(0..15)
#   hex_vals.zip(base10_vals).to_h
# end