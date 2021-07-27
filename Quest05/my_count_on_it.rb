##
##
## QWASAR.IO -- my_count_on_it
##
##
## @param {String[]} param_1
##
## @return {integer[]}
##

def my_count_on_it(array_string)
    i = 0
    integer_array = []
    while (i != array_string.length)
        integer_array[i] = array_string[i].length
        i += 1
    end
    return integer_array
end

#array_string = ["Baby", "Yoda", "rocks!!!"]
#my_count_on_it(array_string)
