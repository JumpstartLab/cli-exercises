gem 'minitest'
require 'minitest/autorun'
require 'minitest/pride'

require './lib/waiting_room_manager'

class WaitingRoomManagerTest < Minitest::Test


  #
  # Dear Developer
  #
  #   I heard about the great job you did for the Kitchen Calculator app so we
  # are asking you to build our new app to use for our Doctor waiting rooms.
  # We want to track the people that come into the office, see the doctor, and
  # leave the office (when they get tired of waiting). We think if we can start
  # tracking the people we'll stop losing them. It's becoming a problem!
  #
  #
  #                                   Sincerely,
  #
  #                                       Patrick Erasmus, M.D.
  #
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

  #
  # Dear Developer
  #
  #   It's great what you have created so far. I think our lost patient rate has
  # definitely gotten better. I think if we had time, I think we should start
  # tracking who has actually seen the doctor.
  #
  #
  #                                   Sincerely,
  #
  #                                       Patrick Erasmus, M.D.
  #
  def test_has_seen_the_doctor_list
    skip

    manager = WaitingRoomManager.new
    manager.evaluate("room Frank, Katrina, Jorge, Jeff")
    manager.evaluate("call Jeff")
    manager.evaluate("call Katrina")
    manager.evaluate("seen doctor")

    expected_output = "There are 4 people in the room\nJeff will now see the doctor. There are now 3 people in the room.\nKatrina will now see the doctor. There are now 2 people in the room.\nJeff and Katrina has seen the doctor.\n"

    assert_equal expected_output, manager.output
  end

end