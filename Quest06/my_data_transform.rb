##
##
## QWASAR.IO -- my_data_transform
##
##
## @param {String} param_1
##
## @return {string[]}
##
=begin
#"Gender,FirstName,LastName,UserName,Email,Age,City,Device,Coffee Quantity,Order At\n"
[0] - Gender
[1] - FirstName
[2] - LastName
[3] - UserName
[4] - Email
[5] - Age
[6] - City
[7] - Device
[8] - Coffee Quantity
[9] - Order at
=end

require 'date'

def get_arroba(str1)
    i = 0
    while (i < str1.length)
        if (str1[i] == "@")
            return i
        end
        i += 1
    end
end

def my_data_transform(csv_content)

    i = 0;
    lines = csv_content.split("\n");

    values = []
    while (i < lines.length)
        values[i] = lines[i].split(","); #split csv in str to be able to manipulate them easily
        i += 1
    end

    i = 1
    while (i < values.length)
        email = values[i][4]
        index = get_arroba(values[i][4]) + 1 #found the index of '@' an then slice the str email
        values[i][4] = email[index..]
        i += 1
    end
    i = 1
    while (i < values.length)               #classify ages in groups
        if(values[i][5].to_i >= 1 and values[i][5].to_i <= 20)
            values[i][5] = "1->20";
        end
        if(values[i][5].to_i >= 21 and values[i][5].to_i <= 40)
            values[i][5] = "21->40";
        end
        if(values[i][5].to_i >= 41 and values[i][5].to_i <= 65)
            values[i][5] = "41->65";
        end
        if(values[i][5].to_i >= 66 and values[i][5].to_i <= 99)
            values[i][5] = "66->99";
        end
        i += 1
    end
    i = 1                                   #starting from 1, because the first string doesn't have a valid date
    while (i < values.length)   
        time = DateTime.parse(values[i][9], '%Y-%m-%d %H:%M:%S') 
        hour = time.hour                     #we only need to evaluate the hours
        if(hour >= 6 and hour <= 11)
            values[i][9] = "morning"
        end
        if(hour >= 12 and hour <= 17)
            values[i][9] = "afternoon"
        end
        if(hour >= 18 and hour <= 24)
            values[i][9] = "evening"
        end
        i += 1
    end

    i = 0
    final = []
    while (i < values.length)
        final[i] = values[i].join(",") #join again to have the correct output: one str per user
        i += 1
    end
    return final
end 

#1str = "Gender,FirstName,LastName,UserName,Email,Age,City,Device,Coffee Quantity,Order At\nMale,Carl,Wilderman,carl,wilderman_carl@yahoo.com,29,Seattle,Safari iPhone,2,2020-03-06 16:37:56\nMale,Marvin,Lind,marvin,marvin_lind@hotmail.com,77,Detroit,Chrome Android,2,2020-03-02 13:55:51\nFemale,Shanelle,Marquardt,shanelle,marquardt.shanelle@hotmail.com,21,Las Vegas,Chrome,1,2020-03-05 17:53:05\nFemale,Lavonne,Romaguera,lavonne,romaguera.lavonne@yahoo.com,81,Seattle,Chrome,2,2020-03-04 10:33:53\nMale,Derick,McLaughlin,derick,mclaughlin.derick@hotmail.com,47,Chicago,Chrome Android,1,2020-03-05 15:19:48\n"

#my_data_transform(str)
