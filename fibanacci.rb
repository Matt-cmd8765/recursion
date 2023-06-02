def fib(num)
  puts num if num == 0 
  array = []
  num.times do |i|
    if i == 0 || i == 1
      array << i
    else
      sum = array[i-1] + array[i-2]
      array << sum
    end
  end
  p array
end

fib(8)

def fib_recursive(num)
  return [0,1] if num == 2
  array = fib_recursive(num-1)
  array << array[-1] + array[-2]
end

p fib_recursive(8)