gem 'minitest'
require 'minitest/autorun'
require 'minitest/pride'

require './lib/waiting_room_manager'

class WaitingRoomManagerTest < Minitest::Test

  def test_specify_the_current_room_full_of_people
    skip

    manager = WaitingRoomManager.new
    manager.evaluate("room Frank, Katrina, Jorge, Jeff")

    assert_equal "There are 4 people in the room\n", manager.output
  end

  def test_add_a_person_to_the_room
    skip

    manager = WaitingRoomManager.new
    manager.evaluate("room Frank, Katrina, Jorge, Jeff")
    manager.evaluate("add Henry")

    expected_output = "There are 4 people in the room\nHenry added to the room. There are now 5 people in the room.\n"

    assert_equal expected_output, manager.output
  end

  def test_doctor_calls_a_person
    skip

    manager = WaitingRoomManager.new
    manager.evaluate("room Frank, Katrina, Jorge, Jeff")
    manager.evaluate("call Jorge")

    expected_output = "There are 4 people in the room\nJorge will now see the doctor. There are 3 people in the room.\n"

    assert_equal expected_output, manager.output
  end

  def test_show_the_people_in_the_room
    skip

    manager = WaitingRoomManager.new
    manager.evaluate("room Frank, Katrina, Jorge, Jeff")
    manager.evaluate("show")

    expected_output = "There are 4 people in the room\nFrank, Katrina, Jorge and Jeff in the room.\n"

    assert_equal expected_output, manager.output
  end

  def test_next_person_is_called
    skip

    manager = WaitingRoomManager.new
    manager.evaluate("room Frank, Katrina, Jorge, Jeff")
    manager.evaluate("next")

    expected_output = "There are 4 people in the room\nFrank will now see the doctor. There are now 3 people in the room.\n"

    assert_equal expected_output, manager.output
  end

  def test_person_leaves_because_the_wait_is_too_long
    skip

    manager = WaitingRoomManager.new
    manager.evaluate("room Frank, Katrina, Jorge, Jeff")
    manager.evaluate("leave Jeff")

    expected_output = "There are 4 people in the room\nJeff is tired of waiting and leaves the room. There are now 3 people in the room.\n"

    assert_equal expected_output, manager.output
  end

end