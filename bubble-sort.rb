def bubble_sort(array)
  notSorted = true #set notSorted to true

  #while not sorted
  while notSorted
  	notSorted = false #set that there has been no swaps made
    array.each_with_index do |value, index| #make a pass throught the array
      #check to the right, if out of order swap, watch for last
      if index != array.length-1 && value > array[index+1]
      	newLeft = array[index+1]
      	array[index+1] = value
      	array[index] = newLeft
      	notSorted = true #if a swap is made then it is not sorted 
      end
    end
  end
  p array #print the array
end

bubble_sort([4,3,78,2,0,2]) #should give [0,2,2,3,4,78]
bubble_sort([3,2,9,6,5]) #should give [2,3,5,6,9]