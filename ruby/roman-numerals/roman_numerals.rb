class Integer
  def to_roman
    return 'you are not supposed to count that much' if self > 3999
    digits = self.digits
    thousands(digits[3]) + hundreds(digits[2]) + tens(digits[1]) + unit(digits[0])
  end

  private

  def unit(num)
    return '' unless num
    ROMAN_UNITS.fetch(num)
  end

  def tens(num)
    return '' unless num
    ROMAN_TENS.fetch(num)
  end

  def hundreds(num)
    return '' unless num
    ROMAN_HUNDREDS.fetch(num)
  end

  def thousands(num)
    return '' unless num
    ROMAN_THOUSANDS.fetch(num)
  end

  ROMAN_UNITS = {
    0 => '',
    1 => 'I',
    2 => 'II',
    3 => 'III',
    4 => 'IV',
    5 => 'V',
    6 => 'VI',
    7 => 'VII',
    8 => 'VIII',
    9 => 'IX'
  }

  ROMAN_TENS = {
    0 => '',
    1 => 'X',
    2 => 'XX',
    3 => 'XXX',
    4 => 'XL',
    5 => 'L',
    6 => 'LX',
    7 => 'LXX',
    8 => 'LXXX',
    9 => 'XC',
  }

  ROMAN_HUNDREDS = {
    0 => '',
    1 => 'C',
    2 => 'CC',
    3 => 'CCC',
    4 => 'CD',
    5 => 'D',
    6 => 'DC',
    7 => 'DCC',
    8 => 'DCCC',
    9 => 'CM',
  }

  ROMAN_THOUSANDS = {
    0 => '',
    1 => 'M',
    2 => 'MM',
    3 => 'MMM',
  }

end

module BookKeeping
  VERSION = 2 #Where the version number matches the one in the test.
end
