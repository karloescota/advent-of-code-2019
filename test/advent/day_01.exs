defmodule AdventTest.Day01Test do
  use ExUnit.Case

  alias Advent.Day01

  test "fuel required" do
    mass = 12
    assert Day01.fuel_required(mass) == 2

    mass = 14
    assert Day01.fuel_required(mass) == 2

    mass = 1969
    assert Day01.fuel_required(mass) == 654

    mass = 100_756
    assert Day01.fuel_required(mass) == 33583
  end

  test "total fuel required" do
    masses = [12, 14, 1969]
    assert Day01.total_fuel_required(masses) == 658
  end

  test "cummulative fuel required" do
    mass = 14
    assert Day01.cumulative_fuel_required(mass) == 2

    mass = 1969
    assert Day01.cumulative_fuel_required(mass) == 966

    mass = 100_756
    assert Day01.cumulative_fuel_required(mass) == 50346
  end

  test "total cummulative fuel required" do
    masses = [14, 1969, 100_756]
    assert Day01.total_cumulative_fuel_required(masses) == 51314
  end
end
