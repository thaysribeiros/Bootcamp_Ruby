##
##
## QWASAR.IO -- my_data_process
##
##
## @param {String[]} param_1
##
## @return {string}
##

=begin
output:'{"Gender":{"Male":3,"Female":2},"Email":{"yahoo.com":2,"hotmail.com":3},"Age":{"21->40":2,"66->99":2,"41->65":1},
"City":{"Seattle":2,"Detroit":1,"Las Vegas":1,"Chicago":1},"Device":{"Safari iPhone":1,"Chrome Android":2,"Chrome":2},
"Order At":{"afternoon":4,"morning":1}}'
[0] "Gender" - "Male" -nbr, "female" -nbr
[4] "Email" - "yahoo" - nbr, "hotmail" -nbr
[5] "Age" - "group" - nbr, "group" - nbr
[6] "City" - "city1" - nbr, "city 2" - nbr...
[7] "Device" "safari" - nbr, "android" - nbr
[9] "Order at" - "afternoon" -nbr, "morning" -nbr...
=end

require 'json'

def add_values(result, key, values)
    if (result[key][values] == nil)
        result[key][values] = 1
    else 
        result[key][values] += 1
    end
end
        
def my_data_process(csv_content)
    result = {"Gender" => {}, "Email" => {}, "Age" => {}, "City" => {}, "Device" => {}, "Order At" => {}}
    for line in csv_content[1..]
        values = line.split(',')
        add_values(result, "Gender", values[0])
        add_values(result, "Email", values[4])
        add_values(result, "Age", values[5])
        add_values(result, "City", values[6])
        add_values(result, "Device", values[7])
        add_values(result, "Order At", values[9])
        
    end
    return result.to_json
end

#csv_content = ["Gender,FirstName,LastName,UserName,Email,Age,City,Device,Coffee Quantity,Order At", "Male,Carl,Wilderman,carl,yahoo.com,21->40,Seattle,Safari iPhone,2,afternoon", "Male,Marvin,Lind,marvin,hotmail.com,66->99,Detroit,Chrome Android,2,afternoon", "Female,Shanelle,Marquardt,shanelle,hotmail.com,21->40,Las Vegas,Chrome,1,afternoon", "Female,Lavonne,Romaguera,lavonne,yahoo.com,66->99,Seattle,Chrome,2,morning", "Male,Derick,McLaughlin,derick,hotmail.com,41->65,Chicago,Chrome Android,1,afternoon"]
#my_data_process(csv_content)
