class Pangram
  ALPHABET = ("a".."z")
  
  def self.is_pangram?(sentence)
      string = sentence.downcase
      ALPHABET.all?{|letter| string.include?(letter) }
  end
end

puts Pangram.is_pangram?("the uick brown fox jumps over the lazy dog")
