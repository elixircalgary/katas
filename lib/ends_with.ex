defmodule EndsWith do
  @moduledoc """
  Complete the solution so that it returns true if the first argument(string) passed in ends with the 2nd argument (also a string).

  Examples:

  solution("abc", "bc") # returns true
  solution("abc", "d") # returns false

  Taken from codewars
  """
  def solution(str, ending) do
    check(reverse(str) |> to_list, reverse(ending) |> to_list)
  end

  def check([h|t], [h1|t1]) when h == h1 do
    check(t,t1)
  end

  def check(_, []) do
    true
  end

  def check(_, _) do
    false
  end



  defp to_list(str) do
    String.split(str, ~r{}, trim: true)
  end

  defp reverse(str) do
    String.reverse(str)
  end
end
