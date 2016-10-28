class Sieve
  def initialize(limit)
    @numbers = (2..limit).to_a
    @marked_numbers = []
  end

  def primes
    @numbers.each do |number|
      unless @marked_numbers.include?(number)
        mark_number(number)
      end
      @numbers.reject!{|num| @marked_numbers.include?(num)}
    end
  end

  private

  def mark_number(number)
    @numbers.each do |i|
      if number != i && i % number == 0
        @marked_numbers << i
      end
    end
  end
end
