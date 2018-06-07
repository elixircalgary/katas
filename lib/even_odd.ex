defmodule EvenOdd do
  @moduledoc """
  Return if a number is even or odd

  Taken from codewars.
  """
  def even_or_odd(number) do
    case rem(number, 2) do
      0 -> "Even"
      _ -> "Odd"
    end
  end
end
