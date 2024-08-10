defmodule Calculator do
  # Function that will find the percentage of a value
  def find_percentage_of_value(percentage, value) do
    # value * (percentage / 100)

    # find decimal value of a percentage
    # dec_percent = BasicMath.divide(percentage, 100)
    # BasicMath.multiply(dec_percent, value)

    # alternatively using pipe operator
    percentage
    |> BasicMath.divide(100)
    |> BasicMath.multiply(value)
    # here the percentage is being divided by 100 then multiplied by the value we pass
    |> BasicMath.round_up()
  end

  # challenge: get distance travelled when given speed and time
  def find_distance_traveled(speed, time) do
    # formula: speed = distance / time
    speed
    |> BasicMath.multiply(time)
    |> BasicMath.round_up()
  end
end
