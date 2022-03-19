
def bad_two_sum?(arr,target)

    (0...arr.length).each do |i|
        (i+1...arr.length).each do |j|

            return true if arr[i] + arr[j] == target
        end
    end
    false

end

 arr = [0, 1, 5, 7]
puts bad_two_sum?(arr, 6) # => should be true
puts bad_two_sum?(arr, 10) # => should be false

def okay_two_sum?(arr,target) # only takes sorted arrays
    arr.sort
    arr.each_with_index do |el,i|
        search_target = target - el

        if arr.index(search_target) != nil && arr.index(search_target) != i 
            puts el
            puts search_target
            return true
        end
    end
    
    false

end

puts okay_two_sum?(arr, 6) # => should be true
puts okay_two_sum?(arr, 10) # => should be false

def two_sum?(arr, target)
    hash = {}

    arr.each do |ele|
        if hash.has_key?(ele)
            return true
        end
        hash[target-ele] = ele
    end
    false
end

puts two_sum?(arr, 6) # => should be true
puts two_sum?(arr, 10) # => should be false