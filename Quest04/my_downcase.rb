##
##
## QWASAR.IO -- my_downcase
##
##
## @param {String} param_1
##
## @return {string}
##

def my_downcase(str)

    i = 0
    while (i!=str.size)
        k = str[i].to_s
        if (k>='A' and k<='Z')
            str[i] = (k.ord+32).chr
        else
            str[i] = k
        end
        i += 1
    end
    return str
end

#my_downcase("BaBy YODA")
