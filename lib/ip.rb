def ip_to_num(ip_address)
  # TODO: return the number version of the `ip_address` string
  array = ip_address.split('.')
  bin_array = []
  array.each do |nr|
    nr_int = nr.to_i
    bin = nr_int.to_s(2).rjust(8, '0')
    bin_array << bin
  end
  asa = bin_array.join
  asa.to_i(2)
end

def num_to_ip(number)
  # TODO: return the string IP address from the `number`
  bin = number.to_s(2).rjust(32, '0')
  bin_array = bin.chars.each_slice(8).map(&:join)
  my_array = []
  bin_array.each do |nr|
    my_array << nr.to_i(2)
  end
  my_array.join('.')
end
