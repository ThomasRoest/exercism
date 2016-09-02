class Hamming
  def self.compute(string1, string2)

    begin 
      hamming_difference = 0
      
      string1_array = string1.split("")
      string2_array = string2.split("")

    raise ArgumentError if string1_array.length != string2_array.length

      string1_array.each_with_index do |item, index|
        if item != string2_array[index.to_i]
          hamming_difference += 1
        end
      end
      p hamming_difference
    end
  end
end
