defmodule StringUtils do
  @moduledoc """

  Implement String#digit? (in Java StringUtils.isDigit(String)), which should return true if given object is a digit (0-9), false otherwise.

  Taken from codewars.
  """
  def digit?(s) do
    s =~ ~r/^\d\z/
  end
end
