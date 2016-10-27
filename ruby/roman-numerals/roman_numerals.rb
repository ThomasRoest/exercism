class Fixnum

def to_roman

  roman_numbers = { 
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
  }


  

  if  < 10
    romans = roman_numbers.values_at(num)
    romans.join("")
  end

  if num >= 10 && num < 100
    numbers = num.to_s.split('')
    new_array = []
    new_array << numbers[0].to_i * 10
    new_array << numbers[1].to_i

    new_array

    first = roman_numbers.values_at(new_array[0])
    second = roman_numbers.values_at(new_array[1])
    
    romans = first + second
    romans.join("")

  end

  if num >= 100
    numbers = num.to_s.split('')
    new_array = []
    new_array << numbers[0].to_i * 100
    new_array << numbers[1].to_i * 10
    new_array << numbers[2].to_i

    p new_array

    p first = roman_numbers.values_at(new_array[0])
    p second = roman_numbers.values_at(new_array[1])
    p third = roman_numbers.values_at(new_array[2])
    
    # not if nil

    # romans = first + second + third
    # romans.join("")

  end


  # new_array << numbers[0].to_i * 1000 
  # new_array << numbers[1].to_i * 100 
  # new_array << numbers[2].to_i * 10 
  # new_array << numbers[3].to_i

  #   new_array

#extract digits from total 


# find roman numberal for each number extracted

end
end

p 900.to_roman