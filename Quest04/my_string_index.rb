##
##
## QWASAR.IO -- my_string_index
##
##
## @param {String} param_1
## @param {Character} param_2
##
## @return {integer}
##

def my_string_index(str1, str2)
    i = 0
    while str1[i]
        if (str2 == str1[i])
            return i
        end
    i += 1
    end
    return -1
end

#my_string_index("hello", "a")
