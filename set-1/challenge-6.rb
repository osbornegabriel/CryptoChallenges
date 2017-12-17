require_relative 'challenge-5'

def hamming_distance(str_1, str_2)
  bits_1 = ascii_to_binary(str_1)
  bits_2 = ascii_to_binary(str_2)
  count = 0
  bits_1.chars.each_with_index do |digit,i|
    count += 1 if digit != bits_2[i]
  end
  count
end

def find_keysize(bin_str)
  most_likely = 0
  distance = bin_str.size
  38.times do |i|
    matches = create_scan(i + 2, bin_str)
    first = matches[0]
    second = matches[1]
    ham_distance = hamming_distance(first, second) / (i + 2)
    if ham_distance < distance
      distance = ham_distance
      most_likely = i + 2
    end
  end
  most_likely
end

def create_scan(count, str)
  search = "/.{" + count.to_s + "}/"
  str.scan(eval(search))
end