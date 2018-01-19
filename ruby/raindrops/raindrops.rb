class Raindrops
  FACTOR_STRING_HASH = { 3 => "Pling", 5 => "Plang", 7 => "Plong"}
  def self.convert(num)
    converted = FACTOR_STRING_HASH.reduce("") do |memo, (factor,str)|
      isFactor?(num, factor) ? memo + str : memo
    end
    converted.empty? ? num.to_s : converted
  end

  private
  def self.isFactor?(num, factor)
    num % factor == 0
  end
end

module BookKeeping
  VERSION = 3
end
