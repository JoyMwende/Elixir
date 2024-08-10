defmodule JoyTest do
  use ExUnit.Case
  doctest Joy

  test "greets the world" do
    assert Joy.hello() == :world
  end
end
