require_relative "exercise"
require "test/unit"

class TestExercise < Test::Unit::TestCase
  test 'online excercise ' do
    path = Exercise.new([
      ['f', 'f', 'f', 'f'],
      ['t', 't', 'f', 't'],
      ['f', 'f', 'f', 'f'],
      ['f', 'f', 'f', 'f']
      ], 0, 3, 0, 0)
    path.print_solution
    assert_equal(7, path.solution.size - 1)
  end

  test 'online variation ' do
    path = Exercise.new([
      ['f', 'f', 'f', 'f'],
      ['t', 't', 't', 'f'],
      ['f', 'f', 't', 'f'],
      ['f', 't', 'f', 'f'],
      ['f', 'f', 'f', 'f']
      ], 0, 4, 0, 0)
    path.print_solution
    assert_equal(10, path.solution.size - 1)
  end


  test 'bigger table ' do
    path = Exercise.new([
      ['f', 't', 'f', 'f', 'f'],
      ['f', 't', 'f', 't', 'f'],
      ['f', 'f', 'f', 't', 'f'],
      ['t', 'f', 't', 'f', 'f'],
      ['f', 't', 'f', 't', 'f'],
      ['f', 'f', 'f', 'f', 'f']
      ], 0, 5, 0, 0)
    path.print_solution
    assert_equal(17, path.solution.size - 1)
  end
end
