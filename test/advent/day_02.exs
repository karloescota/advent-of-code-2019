defmodule AdventTest.Day01Test do
  use ExUnit.Case

  alias Advent.Day02

  test "compute" do
    intcode = [99]
    assert Day02.compute(intcode) == [99]

    intcode = [1, 0, 0, 0, 99]
    assert Day02.compute(intcode) == [2, 0, 0, 0, 99]

    intcode = [2, 3, 0, 3, 99]
    assert Day02.compute(intcode) == [2, 3, 0, 6, 99]

    intcode = [2, 4, 4, 5, 99, 0]
    assert Day02.compute(intcode) == [2, 4, 4, 5, 99, 9801]

    intcode = [1, 1, 1, 4, 99, 5, 6, 0, 99]
    assert Day02.compute(intcode) == [30, 1, 1, 4, 2, 5, 6, 0, 99]
  end
end
