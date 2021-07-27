##
##
## QWASAR.IO -- my_upcase
##
##
## @param {String} param_1
##
## @return {string}
##

#.chr() used to return a one-character string at the beginning of the string

def my_upcase(str)
    i = 0
    while i!=str.size
        k = str[i].to_s #.to_s()Returns the integer correspondent in ASCII or vice versa
        if (k>='a' and k<='z')
            str[i] = (k.ord-32).chr #.ord()Returns the Integer ordinal of a one-character string. 
        else 
            str[i] = k
        end
        i += 1
    end
    return str
end 

#my_upcase("hEllo")
