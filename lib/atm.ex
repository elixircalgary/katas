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
    choose_bills(%{20 => 0, 50 => 0, 100 => 0}, n)
  end

  defguard changeable?(amount, bill) when amount >= bill and rem(amount, bill) == 0

  def choose_bills(bills, n) when changeable?(n, 100) do
    choose_bills(%{bills | 100 => bills[100] + 1}, n - 100)
  end

  def choose_bills(bills, n) when changeable?(n, 50) do
    choose_bills(%{bills | 50 => bills[50] + 1}, n - 50)
  end

  def choose_bills(bills, n) when n >= 20 do
    choose_bills(%{bills | 20 => bills[20] + 1}, n - 20)
  end

  def choose_bills(bills, _) do
    bills
    |> Map.values()
    |> Enum.reverse()
  end
end
