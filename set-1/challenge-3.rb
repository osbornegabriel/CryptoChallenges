require_relative 'challenge-2'

def count_values(scan_size, string)
  collection = string.scan(eval("/.{#{scan_size}}/"))
  uniq_vals = collection.uniq
  value_count = uniq_vals.map!{|val| [val, collection.count(val)]}
  value_count.sort_by{|key, value| value}.to_h
end