##
##
## QWASAR.IO -- my_size
##
##
## @param {String} param_1
##
## @return {integer}
##

def my_size(str)
    i = 0
    str.each_char { |c|
        i += 1
    }
    return i
end
#my_size("Baby Yoda")
