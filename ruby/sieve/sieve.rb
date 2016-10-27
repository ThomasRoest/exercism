class Sieve
  def initialize(limit)
    @range = (2..limit).to_a
  end

  def primes
    #keeping track of marked numbers
    marked_numbers = []

    #iterate over numbers in array
    for number in @range do
      #check if number is marked
      if !marked_numbers.include?(number)
        #multiple check unless number == i
        @range.each do |i|
          if number != i
            if i % number == 0
              marked_numbers << i
              @range.delete(i)
            end
          end
        end
      end
    end

    #range without marked numbers = primes
    @range
  end
end

 puts Sieve.new(1000).primes
