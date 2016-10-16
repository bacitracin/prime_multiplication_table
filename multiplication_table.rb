def print_table()
  rows = pull_primes(10) #array
  columns = rows

  rows.each {|row_num| print "%-3d " % row_num}
  print "\n"

  columns.each do |column_num|
    rows.each {|row_num| print "%-3d " % (row_num * column_num)}
    print "\n"
  end

end

def pull_primes(num)
  primes_array = []
  counter = 2

  until primes_array.size == num
    if is_prime?(counter)
      primes_array << counter
    end
    counter += 1
  end

  primes_array

end

def is_prime?(num)
  divisors_array = []
  
  (1..num).each do |n|
    if num % n == 0
      divisors_array << num
    end
  end

  divisors_array.length > 2 ? false:true

end