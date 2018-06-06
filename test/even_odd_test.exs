defmodule EvenOddTest do
  use ExUnit.Case

  test "solution" do
    assert EvenOdd.even_or_odd(2) == "Even"
    assert EvenOdd.even_or_odd(0) == "Even"
    assert EvenOdd.even_or_odd(7) == "Odd"
    assert EvenOdd.even_or_odd(1) == "Odd"
  end
end
