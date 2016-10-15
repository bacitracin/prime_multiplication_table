def print_table()
  prime_numbers = pull_primes(10) #array
  
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