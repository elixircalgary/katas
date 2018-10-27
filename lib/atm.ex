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

  def bills([h, f, t], number) when test?(number, 100) do
    bills([h + 1, f, t], number - 100)
  end

  def bills([h, f, t], number) when test?(number, 50) do
    bills([h, f + 1, t], number - 50)
  end

  def bills([h, f, t], number) when number >= 20 do
    bills([h, f, t + 1], number - 20)
  end

  def bills(list, number) do
    list
  end
end
