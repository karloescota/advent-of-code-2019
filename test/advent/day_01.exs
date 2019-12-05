defmodule AdventTest.Day01Test do
  use ExUnit.Case

  alias Advent.Day01

  test "fuel required sample" do
    mass = 12
    assert Day01.fuel_required(mass) == 2

    mass = 14
    assert Day01.fuel_required(mass) == 2

    mass = 1969
    assert Day01.fuel_required(mass) == 654

    mass = 100_756
    assert Day01.fuel_required(mass) == 33583
  end

  test "fuel required input" do
    masses = [12, 14, 1969]
    assert Day01.total_fuel_required(masses) == 658
  end
end
