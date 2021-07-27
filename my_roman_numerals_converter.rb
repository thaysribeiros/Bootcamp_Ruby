##
## QWASAR.IO -- my_roman_numerals_converter
##
##
## @param {Integer} param_1
## 
##
## @return {String}
##

def roman_mapping
    {
        1000 => "M",
        900 => "MC",
        500 => "D",
        400 => "CD",
        100 => "C",
        90 => "XC",
        50 => "L",
        40 => "XL",
        10 => "X",
        9 => "IX",
        5 => "V",
        4 => "IV",
        1 => "I"
    }
end

def my_roman_numerals_converter(nbr)
        result = ""
        roman_mapping.keys.each do |divisor|
            quotient, modulus = nbr.divmod(divisor)
            result << roman_mapping[divisor] * quotient
            nbr = modulus
        end
        return result
    end

#my_roman_numerals_converter(2022)
