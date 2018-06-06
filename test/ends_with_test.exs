defmodule EndsWithTest do
  use ExUnit.Case
  import EndsWith, only: [solution: 2]

  test "solution" do
    assert solution("abc", "bc") == true
    assert solution("abc", "d") == false
  end
end
