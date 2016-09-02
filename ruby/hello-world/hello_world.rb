class HelloWorld

  ## difference between class methods and instance methods

  # http://www.railstips.org/blog/archives/2009/05/11/class-and-instance-methods-in-ruby/

  def self.hello(name = "World")
    "Hello, #{name}!"
  end
end

