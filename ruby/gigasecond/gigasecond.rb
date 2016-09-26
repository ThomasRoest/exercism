module Gigasecond
  VERSION = '9b8b80c'

  def self.from(time)
    time + 1_000_000_000
  end

end