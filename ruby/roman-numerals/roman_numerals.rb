class Integer
  NUMERALS = {
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
    1 => "I",
  }

  def to_roman
    number = self
    roman_number = ""

    NUMERALS.each do |arabic_number, roman_numeral|
      factor = number / arabic_number
      roman_number += roman_numeral * factor
      number -= arabic_number * factor
    end
    roman_number
  end
end

45.to_roman






