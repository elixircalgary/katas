defmodule EvenOdd do
  @moduledoc """
  Return if a number is even or odd

  Taken from codewars.
  """
  def even_or_odd(number) when rem(number, 2) == 0, do: "Even"
  def even_or_odd(_), do: "Odd"
end
