##
##
## QWASAR.IO -- my_is_negative
##
##
## @param {Integer} param_1
##
## @return {integer}
##

def my_is_negative(n)
  if (n >= 0)
    return 1;
  else
    return 0;
  end
end

puts my_is_negative(-1);
puts my_is_negative(1);
puts my_is_negative(0);
