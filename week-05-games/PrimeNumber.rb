# A function to check if a number is prime based on a list of known primes
def is_prime(number, primes)
    primes.each do |prime|
      return false if number % prime == 0
    end
    true
end
  
  # A function to generate a specified count of prime numbers
  def generate_primes(count)
    primes = []   # Array to store prime numbers
    number = 2    # Start checking for primes from 2
  
    # Continue until the required count of primes is reached
    until primes.length == count
      primes << number if is_prime(number, primes)  # Add to primes array if the number is prime
      number += 1  # Move to the next number for checking
    end
  
    primes  # Return the array of prime numbers
  end
  
  # Generate and print the first 50 prime numbers
  prime_numbers = generate_primes(50)
  prime_numbers.each { |prime| puts prime }
  