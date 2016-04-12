# 3 5 1
arr = [-1,3,-4,5,1,-6,2,1]
# arr = [0,0,0,3,0,-1,1]

arr.each_with_index.reject {|el,i| i == 0}.each do |el, index|
 p arr[0..index+1]
  if (arr[0..index-1].reduce :+) == (arr[index+1..arr.last].reduce :+)
    puts el
  else
    puts "."
  end

end

# puts arr.reduce :+

# arr.each_with_index.reject {|el,i| i == 0}.each do |el, index|

#   index
#   if arr[0..index].inject(0) {|sum, n| sum + n} == arr[index..arr.last].inject(0) {|sum, n| sum + n}
#     p el
#   else
#     puts "."
#   end

# end