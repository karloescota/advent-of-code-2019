defmodule Advent.Day01 do
  def fuel_required(mass) do
    floor(mass / 3) - 2
  end

  def total_fuel_required(masses) do
    Enum.reduce(masses, 0, &(fuel_required(&1) + &2))
  end
end
