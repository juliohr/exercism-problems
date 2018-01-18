class Complement
  def self.of_dna(strand)
    if strand.chars.all?(/[GCTA]/)
      strand.tr('GCTA', 'CGAU')
    else
      ''
    end
  end
end

module BookKeeping
  VERSION = 4
end
