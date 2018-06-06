defmodule ATMTest do
  use ExUnit.Case

  test "It should work for basic tests" do
    _test(40, [0, 0, 2])
    _test(250, [2, 1, 0])
    _test(260, [2, 0, 3])
    _test(230, [1, 1, 4])
    _test(60, [0, 0, 3])
  end

  defp _test(val, sol) do
    assert ATM.withdraw(val) == sol
  end
end
