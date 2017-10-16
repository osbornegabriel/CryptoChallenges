class Decoder
  attr_accessor :bin_rep_length, :from_bin, :to_bin

  def initialize(bin_rep_length, values_table)
    @bin_rep_length = bin_rep_length
    @bit_vals = set_bit_vals
    @to_base10 = create_to_base10(values_table)
    @from_base10 = create_from_base10
  end

  def set_bit_vals
    [128,64,32,16,8,4,2,1].last(@bin_rep_length)
  end

  def create_to_base10(table)
    base10_vals = Array(0..table.length)
    table.zip(base10_vals).to_h
  end

  def create_from_base10
    @to_base10.invert
  end

  def find_bits(base10_num)
    bits = @bit_vals.map do |b|
      if base10_num >= b
        base10_num -= b
        '1'
      else
        '0'
      end
    end
    bits.join
  end

  def from_bits(bin_num)
    value = 0
    @bit_vals.each_with_index do |v,i|
      value += v if bin_num[i] == '1'
    end
    value
  end

  def from_bin(num_string)
    bin_vals = num_string.scan(eval("/.{#{@bin_rep_length}}/"))
    base10_vals = bin_vals.map{|bin_val| from_bits(bin_val)}
    base10_vals.map!{|integer| @from_base10[integer]}
    base10_vals.join
  end

  def to_bin(num_string)
    num_chars = num_string.chars
    num_chars.map!{|char| @to_base10[char]}
    num_chars.map!{|char| find_bits(char)}
    num_chars.join
  end
end