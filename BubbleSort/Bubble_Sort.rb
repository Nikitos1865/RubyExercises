

def bubble_sort(arr)
    arr.each do |num| 
        for i in (0..arr.length-1)
          index = i % (arr.length - 1)
             if arr[index] > arr[index+1]
                sep = arr[index]
                arr[index] = arr[index+1]
                arr[index+1] = sep 
            end
        end
    end 
    arr
end


puts bubble_sort([4,3,78,2,0,2,57, 104, 3, 5, 9, 10])