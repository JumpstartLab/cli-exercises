require 'stringio'

class KitchenCalculator
  def initialize
    @out = StringIO.new
  end

  attr_reader :out

  def output
    @out.string
  end

  def evaluate(input)
    # TODO: See the test that define the requirements
  end
end

