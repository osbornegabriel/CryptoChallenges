require_relative 'challenge-3'

def parse_txt_file(file)
  lines = []
  File.open(file).each do |line|
    lines << line.chomp
  end
  lines
end

def find_decrypted_line(translated_lines)
  translated_lines.sort_by{|line| score_translation(line)}[-1]
end