require_relative "exercise"
require "test/unit"

class TestExercise < Test::Unit::TestCase
  test 'online excercise ' do
    path = Exercise.new([
      ['f', 'f', 'f', 'f'],
      ['t', 't', 'f', 't'],
      ['f', 'f', 'f', 'f'],
      ['f', 'f', 'f', 'f']
      ], 0, 3, 0, 0).find_path()
    assert_equal(7, path.size - 1)
  end

  test 'online variation ' do
    path = Exercise.new([
      ['f', 'f', 'f', 'f'],
      ['t', 't', 't', 'f'],
      ['f', 'f', 't', 'f'],
      ['f', 't', 'f', 'f'],
      ['f', 'f', 'f', 'f']
      ], 0, 4, 0, 0).find_path()
    assert_equal(10, path.size - 1)
  end
end
