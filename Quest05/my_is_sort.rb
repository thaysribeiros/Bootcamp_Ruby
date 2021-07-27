##
##
## QWASAR.IO -- my_is_sort
##
##
## @param {Integer[]} param_1
##
## @return {boolean}
##

def my_is_sort(integer_array)
    bool_asc = true
    bool_desc = true
    i = 0

    if (integer_array.length == 0)
        return true
    end
    while (i != integer_array.length - 1)
        #check DESC
        if (integer_array[i] >= integer_array[i + 1])
            i += 1
        else 
            bool_desc = false
            break
        end
    end

    while (i != integer_array.length - 1)
        #check ASC
        if (integer_array[i] <= integer_array[i + 1])
            i += 1
        else
            bool_asc = false
            break
        end
    end

    if (bool_asc == true || bool_desc == true)
        return true 
    else 
        return false
    end
end

#integer_array = []
#my_is_sort(integer_array)
