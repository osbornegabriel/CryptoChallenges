require_relative 'challenge-4'

=begin
  One of the 60-character strings in THIS FILE(linked) has been encrypted by single-character XOR.

  Find it.

  (Your code from #3 should help.)
=end

lines = parse_txt_file("4.txt")
translated_lines =  lines.map!{|line| find_top_translation(line)}
p find_decrypted_line(translated_lines)