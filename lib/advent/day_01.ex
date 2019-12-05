defmodule Advent.Day01 do
  def fuel_required(mass) do
    floor(mass / 3) - 2
  end

  def total_fuel_required(masses) do
    Enum.reduce(masses, 0, &(fuel_required(&1) + &2))
  end

  def cummulative_fuel_required(mass) do
    case fuel_required(mass) do
      fuel when fuel > 0 ->
        fuel + cummulative_fuel_required(fuel)

      _ ->
        0
    end
  end

  def total_cummulative_fuel_required(masses) do
    Enum.reduce(masses, 0, &(cummulative_fuel_required(&1) + &2))
  end
end
