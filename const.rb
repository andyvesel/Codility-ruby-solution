# 3 5 1
a = [-1,3,-4,5,1,-6,2,1]
# a = [1,2,3,4,5]
left_sum = 0 
right_sum = a.inject(:+)
  
  a.each_with_index do |el, i|

    left_sum = left_sum + a[i - 1] if i > 0
    right_sum -= el
    
    puts el if left_sum == right_sum
  end