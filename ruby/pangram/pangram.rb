class Pangram
  def self.pangram?(str)
    (('a'..'z').to_a - str.downcase.chars).empty?
  end

end

module BookKeeping
  VERSION = 6
end
