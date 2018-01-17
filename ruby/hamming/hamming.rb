class Hamming
  def self.compute(strand1, strand2)
    raise ArgumentError unless strandsLengthEqual?(strand1, strand2)
    calculate_hamming_distance(strand1, strand2)
  end

  private

  def self.strandsLengthEqual?(strand1, strand2)
    strand1.length == strand2.length
  end

  def self.calculate_hamming_distance(strand1, strand2)
    strand1.length.times.count { |i| strand1[i] != strand2[i] }
  end
end

module BookKeeping
  VERSION = 3
end
