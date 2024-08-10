# Numbers and Math Operators Lesson
defmodule BasicMath do
  # Add function
  def add(addend_1, addend_2) do
    addend_1 + addend_2
  end


  # shortend version of the above code
  # def add(addend_1, addend_2), do: addend_1 + addend_2 #end is not needed in this version

  # Subtract function
  def subtract(minuend, subtrahend) do
    minuend - subtrahend
  end

  # Multiply function
  def multiply(multiplier, multiplicand) do
    multiplier * multiplicand
  end

  # Divide function
  def divide(dividend, divisor) do
    dividend / divisor
  end

  # Function to round up floats
  # ceil() - rounds a float to the nearest integer greater than or equal to num
  # Its parameters are (float, precision_range - which in our case is 2)
  def round_up(value) do
    Float.ceil(value, 2)
  end

  # Returns a value rounded up to the nearest 100th place of given `value`.
  def absolute_value(value) do
    abs(value)
  end

  # truncate value
  def truncate_value(value) do
    trunc(value)
  end
end

  # running the above: BasicMath.add(2, 4)
