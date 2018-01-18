require 'pry'
class Complement
  DNA_COMPLEMENT_HASH = {
    'G' => 'C',
    'C' => 'G',
    'T' => 'A',
    'A' => 'U'
  }
  def self.of_dna(strand)
    rna_strand = ""
    if strand.chars.all?(/[GCTA]/)
      strand.each_char do |c|
          rna_strand << DNA_COMPLEMENT_HASH.fetch(c)
      end
    end
    rna_strand
  end
end

module BookKeeping
  VERSION = 4
end
