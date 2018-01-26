class Sieve
  def initialize(limit)
    @limit = limit
  end

  def primes
    primes = (0..@limit).to_a
    primes[0] = primes[1] = nil

    (2..@limit).each do |i|
      (i*i..@limit).step(i) { |j| primes[j] = nil }
    end
    primes.compact
  end
end

module BookKeeping
  VERSION = 1 # Where the version number matches the one in the test.
end
