defmodule UserValidatorTest do
  use ExUnit.Case
  import UserValidator, only: [valid?: 1]

  test "basic cases" do
    assert valid?("asddsa") == true
    assert valid?("a") == false
    assert valid?("Hass") == false
    assert valid?("Hasd_12assssssasasasasasaasasasasas") == false
    assert valid?("") == false
    assert valid?("____") == true
    assert valid?("012") == false
    assert valid?("p1pp1") == true
    assert valid?("asd43 34") == false
    assert valid?("asd43_34") == true
    assert valid?("asd43_34\n") == false
  end
end
