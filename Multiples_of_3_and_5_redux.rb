def solution1(number)
  index = 1
  total = 0
  while index < number
    if index % 3 == 0 || index % 5 == 0
      total = (total + (index))
      # print index, " is divisable by 3 or 5", total, "\n"
    end
    index += 1
  end
  total
end

def solution2(number)
  total = 0
  for i in 0..number-1
    total = total += i if i % 3 == 0 || i % 5 == 0
  end
  total  
end

def solution3(number)
  sum = sum_all_multiples(3, number)
  sum += sum_all_multiples(5, number)
  sum -= sum_all_multiples(3*5, number)
  sum
end

def sum_all_multiples(n,number)
  count = (number-1)/n
  last = count * n
  sum = ((n + last) / 2.0) * count
  sum.to_i
end

def solution4(number)
  sum(3,number)+sum(5,number)-sum(15,number)
end

def sum(x,n)
  base=((n-1)/x).to_i
  return base*(base+1)/2*x
end