class MultiplicationTable
  def print_table(num)
    rows = pull_primes(num) #array
    columns = rows

    print "     "
    rows.each {|row_num| print " %-3d " % row_num}
    print "\n\n"

    columns.each do |column_num|
      print "%-3d| " % column_num
      rows.each {|row_num| print " %-3d " % (row_num * column_num)}
      print "\n\n"
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

end