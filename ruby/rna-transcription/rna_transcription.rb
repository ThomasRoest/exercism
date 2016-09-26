class Complement
  def self.of_dna(dna_strand)
    dna_array = dna_strand.split("")
    complement_strand = ""
    
    dna_array.each do |item|
      case item
        when "G"
          complement_strand += "C"
        when "C"
          complement_strand += "G"
        when "T"
          complement_strand += "A"
        when "A"
          complement_strand += "U"
        else
          puts "NOPE"
          complement_strand = ""
          break
      end
    end
    complement_strand
  end
end

puts Complement.of_dna("ACGTXXXCTTAA")




