class Hamming
  def self.compute(strand1, strand2)
    if strandsEqualLength?(strand1, strand2)
      calculate_hamming_distance(strand1, strand2)
    else
      raise ArgumentError
    end
  end

  private
  def self.strandsEqualLength?(strand1, strand2)
    strand1.size == strand2.size
  end

  def self.calculate_hamming_distance(strand1, strand2)
    hamming_distance = 0
    (0..strand1.size-1).each_with_index { |elem, i| hamming_distance+=1 if strand1[i] != strand2[i] }
    hamming_distance
  end
end

module BookKeeping
  VERSION = 3
end
