gem 'minitest'
require 'minitest/autorun'
require 'minitest/pride'

require './lib/ticket_dispenser'

class TicketDispenserTest < Minitest::Test

  def test_list_destinations
    skip

    dispenser = TicketDispenser.new
    dispenser.evaluate("destinations")

    assert_equal "You can buy tickets to: Main Street; Othello Street; Wall Street; University Blvd\n", dispenser.output
  end

  def test_buy_ticket_to_main_street
    skip

    dispenser = TicketDispenser.new
    dispenser.evaluate("buy Main Street")

    assert_equal "Please insert 4 USD to purchase a ticket to Main Street\n", dispenser.output
  end

  def test_pay_part_of_a_ticket
    skip

    dispenser = TicketDispenser.new
    dispenser.evaluate("buy Main Street")
    dispenser.evaluate("insert 1 USD")

    expected_output = "Please insert 4 USD to purchase a ticket to Main Street\nPlease insert 3 USD to purchase a ticket to Main Street.\n"
    assert_equal expected_output, dispenser.output
  end

  def test_stop_paying_for_a_ticket
    skip

    dispenser = TicketDispenser.new
    dispenser.evaluate("buy Main Street")
    dispenser.evaluate("insert 1 USD")
    dispenser.evaluate("refund")

    expected_output = "Please insert 4 USD to purchase a ticket to Main Street\nPlease insert 3 USD to purchase a ticket to Main Street.\nYou have requested to stop buying a ticket to Main Street. We are refunding you 1 USD.\n"
    assert_equal expected_output, dispenser.output
  end

  def test_pay_confirm_purchase_of_a_ticket
    skip

    dispenser = TicketDispenser.new
    dispenser.evaluate("buy Wall Street")
    dispenser.evaluate("insert 5 USD")
    dispenser.evaluate("confirm")

    expected_output = "Please insert 5 USD to purchase a ticket to Wall Street\nPlease 'confirm' your purchase of a ticket to Wall Street.\nThank you. Printing ticket to Wall Street and returning 0 USD in change.\n"
    assert_equal expected_output, dispenser.output
  end

end