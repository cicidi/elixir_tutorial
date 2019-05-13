defmodule ElixirTutorialChapterFive do
  @moduledoc """
  Documentation for ElixirTutorial.
  """

  @doc """
  Hello world.

  ## Examples

      iex> ElixirTutorial.hello()
      :world

  """
  def hello do
    :world
  end

  def caseFunc() do
    case{1, 2, 3} do
      {4, 5, 6} ->
        IO.puts("This is not match")
      {1, x, 3} ->
        IO.puts("this clause will match and bind 2 to -> x value is #{x}")
        IO.puts("this clause got match won't run next one")
      _ ->
        IO.puts("match with anything")
    end
  end

  def caseFuncWithMatchOperator(n) do
    x = n
    case 10 do
      ^x -> IO.puts("if x is 10 will reach here x is -> #{x}")
      _ -> IO.puts("if x isn't  10 will reach here x is -> #{x}")
    end
  end

  def funcWithCase do
    f = fn
      x, y when x >= 0 -> x + y
      x, y -> x * y
    end
    IO.puts("if x>=0 do addition -> #{f.(1, 2)}")
    IO.puts("if x<0 do multiplication -> #{f.(-1, 2)}")
  end

  def condition do
    cond do
      2 + 2 == 5 ->
        IO.puts("if 2+2 =5 do this")
      2 * 2 == 4 ->
        IO.puts("if 2*2 =4 do this")
      2 / 2 == 1 ->
        IO.puts("if 2/2 =1 do this")
    end
  end

  def conditionOfOne do
    cond do
      hd([1, 2, 3]) -> IO.puts("1 is true")
    end
  end
  def conditionNotFalse do
    cond do
      !hd([false, 2, 3]) -> IO.puts("test !false == true")
    end
  end
  def run() do
    IO.puts("=============Chapter 5 test case========================")
    caseFunc()
    caseFuncWithMatchOperator(1)
    caseFuncWithMatchOperator(10)
    funcWithCase()
    condition()
    conditionOfOne()
    conditionNotFalse()
  end


end
