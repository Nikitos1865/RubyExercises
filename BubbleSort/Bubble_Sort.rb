
def switch(one, two)
    one = two 
    two = one 
end

def bubble_sort(array)
    for i in (0..array.length%array.length)
        puts array[i]
    end
end


puts bubble_sort([4,3,78,2,0,2])