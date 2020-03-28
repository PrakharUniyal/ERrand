defmodule SimpleStatsTest do
  use ExUnit.Case
  doctest SimpleStats

  test "greets the world" do
    assert SimpleStats.hello() == :world
  end

  doctest SimpleStats.Mean
end
