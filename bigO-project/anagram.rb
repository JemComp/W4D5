
# def ana1(str1,str2)
#     perms = str1.split("").permutation.to_a
#     perms.map! {|anagram| anagram.join("")}
    
#     perms.include?(str2)
   

# end

# p ana1("hydroxydeoxycorticosterones", "hydroxydesoxycorticosterone")    #=> true  #=> false
# p ana1("elvis", "lives")    #=> true


# def ana2(str1,str2)
#     return false if str1.length != str2.length 
#     str1_arr = str1.split("")
#     str2_arr = str2.split("")
#     str1_arr.each do |char|
#         idx = str2_arr.find_index(char) 

#         return false if idx.nil?
#         str2_arr.delete_at(idx)
#     end
#     str2_arr.empty?


# end


# p ana2("hydroxydeoxycorticosterones", "hydroxydesoxycorticosterone")    #=> true    #=> false
# p ana2("elvis", "lives")    #=> true

# def ana3(str_1, str_2)
#     str_1.split("").sort == str_2.split("").sort
# end

# p ana3("hydroxydeoxycorticosterones", "hydroxydesoxycorticosterone")    #=> true
# p ana3("elvis", "lives")    #=> true

def ana4(str_1, str_2)
    letters_hash = Hash.new{|h,k| h[k] = 0}
    str_1.each_char {|char| letters_hash[char] += 1}
    str_2.each_char {|char| letters_hash[char] -= 1}

    p letters_hash
    letters_hash.values.all?{|val| val == 0}
    
end


 p ana4("hydroxydeoxycorticosterones", "hydroxydesoxycorticosterone")    #=> true
 p ana4("elvis", "lives")    #=> true