gem 'minitest'
require 'minitest/autorun'
require 'minitest/pride'

require './lib/kitchen_calculator'

class KitchenCalculatorTest < Minitest::Test

  #
  # Dear Martha,
  #
  #   I had this great idea to create an app that would help people in the
  # kitchen. All of the recipes that we write are for certain number of people
  # and it seems people now-a-days are only eating alone or cooking for big
  # groups.
  #
  #                                           Sincerely,
  #
  #                                               Julia Childs
  #
  def test_specify_a_number_of_cups
    skip

    calc = KitchenCalculator.new
    calc.evaluate("amount 6 cups")

    assert_equal "6 cups received\n", calc.output
  end


  #
  #
  # Dear Julia,
  #
  #   I think it would be great to be able to specify the units like "cups" and
  # "teaspoons". I don't think we need to do anything with the units for now
  # except use them to add a little more flavor to the calculator.
  #
  #                                           Sincerely,
  #
  #                                               Martha Stewart
  #
  def test_specify_a_number_of_teaspoons
    skip

    calc = KitchenCalculator.new
    calc.evaluate("amount 3 teaspoons")

    assert_equal "3 teaspoons received\n", calc.output
  end

  def test_half_an_amount
    skip

    calc = KitchenCalculator.new
    calc.evaluate("amount 4 pints")
    calc.evaluate("half")

    assert_equal "4 pints received\n2.0 pints is half\n", calc.output
  end

  def test_double_an_amount
    skip

    calc = KitchenCalculator.new
    calc.evaluate("amount 1.5 tablespoons")
    calc.evaluate("double")

    assert_equal "1.5 tablespoons received\n3.0 tablespoons is double\n", calc.output
  end

  def test_third_an_amount
    skip

    calc = KitchenCalculator.new
    calc.evaluate("amount 6 pints")
    calc.evaluate("third")

    assert_equal "6 pints received\n2.0 pints is third\n", calc.output
  end

  def test_triple_an_amount
    skip

    calc = KitchenCalculator.new
    calc.evaluate("amount 5 apples")
    calc.evaluate("triple")

    assert_equal "5 apples received\n15.0 apples is triple\n", calc.output
  end

  #
  # Dear Martha,
  #
  #   If I had more time to work on this app I would make it so the actual units
  # mattered. We could let the people actually convert to different units. Like
  # pints to cups and teaspoons to tablespoons. Of course, it's not necessary
  # for the first version of this app - it's only if you want to get around
  # to it.
  #
  #                                             Sincerely,
  #
  #                                                  Julia Child
  #
  def test_conversion_from_cups_to_pints
    skip

    calc = KitchenCalculator.new
    calc.evaluate("amount 4 pints")
    calc.evaluate("half")
    calc.evaluate("convert to cups")

    expected_output = "4 pints received\n2.0 pints is half\n2.0 pints is 4.0 cups\n"
    assert_equal expected_output, calc.output
  end

  def test_conversion_from_teaspoons_to_tablespoons
    skip

    calc = KitchenCalculator.new
    calc.evaluate("amount 6 teaspoons")
    calc.evaluate("double")
    calc.evaluate("convert to tablespoons")

    expected_output = "6 teaspoons received\n12.0 teaspoons is double\n12.0 teaspoons is 4.0 tablespoons\n"
    assert_equal expected_output, calc.output
  end

  #
  # Dear Julia,
  #
  #   If I had time I would write out tests for the conversions from cups to
  # pints and tablespoons to teaspoons. If you have time would you write them?
  #
  #  Also, when a person gives us a unit we don't yet know how to process, lets
  # just tell them that we cannot do it and return to them the original amount.
  # What do you think?
  #
  #                                              Sincerely,
  #
  #                                                  Martha Stewart
  #
  def test_conversion_from_apples_to_oranges
    skip

    calc = KitchenCalculator.new
    calc.evaluate("amount 2 apples")
    calc.evaluate("triple")
    calc.evaluate("convert to oranges")

    expected_output = "2 apples received\n6.0 apples is triple\n6.0 apples cannot be converted to oranges\n"
    assert_equal expected_output, calc.output
  end
end