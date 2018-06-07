defmodule StringUtils do
  @moduledoc """

  Implement String#digit? (in Java StringUtils.isDigit(String)), which should return true if given object is a digit (0-9), false otherwise.

  Taken from codewars.
  """
  def digit?(s) when is_binary(s) do
    digit?(Integer.parse(s))
  end

  def digit?({s, _}) when is_integer(s) and s < 9 do
    true
  end

  def digit?({s, _}) when is_integer(s) and s > 9 do
    false
  end

  def digit?(:error) do
    false
  end
end
