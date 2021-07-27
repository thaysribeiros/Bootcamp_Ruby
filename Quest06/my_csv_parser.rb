##
##
## QWASAR.IO -- my_csv_parser
##
##
## @param {String} param_1
## @param {String} param_2
##
## @return {string[][]}
##

def my_csv_parser(str1, str2)

    i = 0;
    lines = str1.split("\n"); #split the str by the '\n' and returns an array of 'n*\n' str.
    values = []
    while (i < lines.length)
        values[i] = lines[i].split(str2); #populates an array[lines.lenght], with an array of the splitted strings by the separator str2
        i += 1
    end
   return values
end

#str1 = "a,b,c,e\n1,2,3,4\n"
#str2 = ","
#my_csv_parser(str1, str2)
