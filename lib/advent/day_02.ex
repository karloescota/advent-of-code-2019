defmodule Advent.Day02 do
  def compute(intcode, index \\ 0) do
    if index > Enum.count(intcode) do
      intcode
    else
      intcode
      |> Enum.fetch!(index)
      |> operate(intcode, index)
    end
  end

  defp operate(opcode, intcode, _index) when opcode == 99, do: intcode

  defp operate(opcode, intcode, index) when opcode in [1, 2] do
    {position_1, position_2, result_position} = positions(intcode, index)

    result =
      case opcode do
        1 -> Enum.fetch!(intcode, position_1) + Enum.fetch!(intcode, position_2)
        2 -> Enum.fetch!(intcode, position_1) * Enum.fetch!(intcode, position_2)
      end

    intcode = List.replace_at(intcode, result_position, result)
    compute(intcode, index + 4)
  end

  defp operate(_opcode, _intcode, _index), do: :error

  defp positions(intcode, index) do
    {
      Enum.fetch!(intcode, index + 1),
      Enum.fetch!(intcode, index + 2),
      Enum.fetch!(intcode, index + 3)
    }
  end
end
