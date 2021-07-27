##
##
## QWASAR.IO -- my_map_mult_two
##
##
## @param {Integer[]} param_1
##
## @return {integer[]}
##


def my_map_mult_two(array_integer)
    i = 0
    while (i != array_integer.length)
        array_integer[i] *= 2
        i += 1
    end
    return array_integer
end

#array_integer = []
#my_map_mult_two(array_integer)
