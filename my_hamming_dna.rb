##
##
## QWASAR.IO -- my_hamming_dna
##
##
## @param {String} param_1
## @param {String} param_2
##
## @return {int}
##

def my_hamming_dna(str1, str2)
    if (str1.length != str2.length)
        return -1
    end

    i = 0
    count_dif = 0
    while (i < str1.length)
        if (str1[i] != str2[i])
            count_dif += 1
        end
        i += 1
    end
    return count_dif
end

=begin
str1 = "ACCAGGG"
str2 =  "ACTATGG"
p my_hamming_dna(str1, str2)
=end
