##
##
## QWASAR.IO -- my_array_uniq
##
##
## @param {Integer[]} param_1
##
## @return {integer[]}
##

#def my_array_uniq(integer_array)
#    return integer_array.uniq
#end

def my_array_uniq(integer_array)
    j = 0
    i = 0
    bool = true
    my_uniq_integer_array = []
    while (j!=integer_array.length)
        i = 0
        bool = true
        while (i!=integer_array.length)
            if (integer_array[j] == my_uniq_integer_array[i])
                bool = false
            end
            i+=1
        end
        if (bool == true)
            my_uniq_integer_array[my_uniq_integer_array.length] = integer_array[j]
        end
        j+=1
    end
    return my_uniq_integer_array
end

#integer_array = [1, 1, 1, 2, 3, 4, 1]
#my_array_uniq(integer_array)
