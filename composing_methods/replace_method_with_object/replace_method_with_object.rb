module ReplaceMethodWithObject
  def find_primes(num)
    sieve = Array.new(num, true)
    results = []
    (2..num).each do |n|
      if sieve[n-1]
        results.push(n)
        ((2*n)..num).step(n) do |i| 
          sieve[i-1] = false
        end
      end
    end
    results
  end

  def find_primes_fixed(num)
    Sieve.new(num).primes
  end
end

class Sieve
  attr_reader :limit, :primes

  def initialize(num)
    @limit = num
    @primes = []
    initialize_sieve
  end

  def is_prime?(n)
    sieve[n-1]
  end

  private

  def sieve
    @sieve ||= Array.new(limit, true)
  end

  def initialize_sieve
    sieve[0] = false
    (2..limit).each do |n|
      if is_prime?(n)
        primes.push(n)
        ((2*n)..limit).step(n) do |i| 
          sieve[i-1] = false
        end
      end
    end
  end
end
