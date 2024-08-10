defmodule CalculatorTest do
  use ExUnit.Case
  doctest Calculator

  test "find_percentage_of_value 100 / 25 = 4" do
    assert Calculator.find_percentage_of_value(25, 100) == 25.0
  end

  describe "find_percentage_of_value/2" do
    test "return correct percentage of value" do
      assert Calculator.find_percentage_of_value(25, 100) == 25.0
      assert Calculator.find_percentage_of_value(23, 456) == 104.89
    end
  end

  describe "find_distance_traveled/2" do
    test "return correct distance traveled" do
      assert Calculator.find_distance_traveled(30, 2) == 60
      assert Calculator.find_distance_traveled(67, 2.8) == 187.6
    end
  end
end
