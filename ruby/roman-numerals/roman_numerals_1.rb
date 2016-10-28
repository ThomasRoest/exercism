class Integer
  ROMAN_NUMBERS = { 
      1 => "I",
      2 => "II",
      3 => "III",
      4 => "IV",
      5 => "V",
      6 => "VI",
      7 => "VII",
      8 => "VIII",
      9 => "IX",
      10 => "X",
      20 => "XX",
      30 => "XXX",
      40 => "XL",
      50 => "L",
      60 => "LX",
      70 => "LXX",
      80 => "LXXX",
      90 => "XC",
      100 => "C",
      200 => "CC",
      300 => "CCC",
      400 => "CD",
      500 => "D",
      600 => "DC",
      700 => "DCC",
      800 => "DCCC",
      900 => "CM",
      1000 => "M",
      2000 => "MM",
      3000 => "MMM",
  }

  def convert_values(digits_array)
    #ex digits array: 194 = [100, 90, 4] 
    romans = []

    digits_array.each do |digit|
      romans << ROMAN_NUMBERS.values_at(digit)
    end

    romans.join("")
  end


  def to_roman
    num = self
    split_number = num.to_s.split('')
    digits_array = []

    if num < 10
      digits_array << split_number[0].to_i
    elsif num >= 10 && num < 100
      digits_array << split_number[0].to_i * 10
      digits_array << split_number[1].to_i
    elsif num >= 100 && num < 1000
      digits_array << split_number[0].to_i * 100
      digits_array << split_number[1].to_i * 10
      digits_array << split_number[2].to_i
    elsif num >= 1000
      digits_array << split_number[0].to_i * 1000
      digits_array << split_number[1].to_i * 100
      digits_array << split_number[2].to_i * 10
      digits_array << split_number[3].to_i
    end
    convert_values(digits_array)
  end
end

