defmodule EndsWith do
  @moduledoc """
  Complete the solution so that it returns true if the first argument(string) passed in ends with the 2nd argument (also a string).

  Examples:

  solution("abc", "bc") # returns true
  solution("abc", "d") # returns false

  Taken from codewars
  """
  def solution(str, ending) when is_binary(str) and is_binary(ending) do
    solution(prepare_check(str), prepare_check(ending))
  end

  def solution([h|t], [h1|t1]) when h == h1 do
    solution(t,t1)
  end

  def solution(_, []) do
    true
  end

  def solution(_, _) do
    false
  end

  defp prepare_check(str) do
    str
    |> String.reverse
    |> String.to_charlist
  end
end
