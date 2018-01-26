class Integer
  def to_roman
    return 'you are not supposed to count that much' if self > 3999
    arabic_num = self
    ROMAN_NUMERAL_MAP.keys.reduce('') do |roman_num, num_to_map|
      quotient, modulus = arabic_num.divmod(num_to_map)
      arabic_num = modulus
      roman_num << (ROMAN_NUMERAL_MAP[num_to_map] * quotient)
    end
  end

  ROMAN_NUMERAL_MAP = {
    1000 => "M",
    900 => "CM",
    500 => "D",
    400 => "CD",
    100 => "C",
    90 => "XC",
    50 => "L",
    40 => "XL",
    10 => "X",
    9 => "IX",
    5 => "V",
    4 => "IV",
    1 => "I"
  }
end

module BookKeeping
  VERSION = 2 #Where the version number matches the one in the test.
end
