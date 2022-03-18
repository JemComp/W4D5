require 'byebug'
# def my_min(arr)
#     min = 1/0.0
#     arr.each_with_index do |ele, i |
#         arr[i..-1].each do |ele2|
#            min = ele2 if ele2 < min 
#         end
#     end
#     min
# end

def my_min(arr)
    min = arr[0]
    arr.each do |ele|
        min = ele if ele < min
    end
    min
end

# def largest_Contiguous_subsum(arr)
#     max = 0
#     perms = []
#     (0...arr.length).each do |i|
#         (i...arr.length).each do |j|
#             perms << arr[i..j]      
#         end
#     end
#     # perms.max {|sub_arr|  p sub_arr.sum} 
#     perms.each do |sub_arr|
#         max = sub_arr.sum if sub_arr.sum > max
#     end
#     max

# end

def largest_Contiguous_subsum(arr)
    max = arr[0]
    current_sum = arr[0]
    # [2, 3, -6, 7, -6, 7]
    arr[1..-1].each do |ele|
        # debugger
        
        
        if current_sum + ele > 0
            current_sum = ele + current_sum
            max = [max,current_sum].max
            
        else
            
            current_sum = ele
            max = [max,current_sum].max
            current_sum = 0
        end
    end
    max
    
end



# list = [ 0, 3, 5, 4, -5, 10, 1, 90 ]
#     p my_min(list)  # =>  -5

list_1 = [5, 3, -7]
list_2 = [2, 3, -6, 7, -6, 7]
list_3 = [-5, -1, -3]

p largest_Contiguous_subsum(list_1)



