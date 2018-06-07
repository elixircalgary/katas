defmodule ATM do
  @moduledoc """
  An ATM ran out of 10 dollar bills and only has 100, 50 and 20 dollar bills.

  Given an amount between 40 and 10000 dollars (inclusive) and assuming that the ATM wants to use as few bills as possible, determinate the minimal number of 100, 50 and 20 dollar bills the ATM needs to dispense (in that order).

  Example
  For n = 250, the result should be [2, 1, 0].

  For n = 260, the result should be [2, 0, 3].

  For n = 370, the result should be [3, 1, 1].

  Input/Output
  [input] integer n Amount of money to withdraw. Assume that n is always exchangeable with [100, 50, 20] bills.
  [output] integer array An array of number of 100, 50 and 20 dollar bills needed to complete the withdraw (in that order).

  Taken from codewars
  """
  def withdraw(n) do
    bills([0, 0, 0], n)
  end

  defguard test?(number, divisor) when number >= divisor and rem(number, divisor) == 0

  def bills(list, number) when test?(number, 100) do
    bills(List.replace_at(list, 0, Enum.at(list, 0) + 1), number - 100)
  end

  def bills(list, number) when test?(number, 50) do
    bills(List.replace_at(list, 1, Enum.at(list, 1) + 1), number - 50)
  end

  def bills(list, number) when number >= 20 do
    bills(List.replace_at(list, 2, Enum.at(list, 2) + 1), number - 20)
  end

  def bills(list, number) do
    list
  end
end
