defmodule ElixirTutorialChapterNine do
  @moduledoc """
  Documentation for ElixirTutorial.
  """

  @doc """
  Hello world.

  ## Examples

      iex> ElixirTutorial.hello()
      :world

  """

  defmodule Recursion do
    def print_multiple_times(msg, n) when n <= 1 do
      IO.puts msg
    end

    def print_multiple_times(msg, n) do
      IO.puts(msg)
      print_multiple_times(msg, n - 1)
    end
  end

  defmodule Math do
    def accumulate([head | tail], sum) do
      accumulate(tail, head + sum)
    end

    def accumulate([], sum) do
      sum
    end

    def double_each([head | tail]) do
      [head * 2 | double_each(tail)]
    end

    def double_each([]) do
      []
    end

    def sum_by_enum() do
      sum = Enum.reduce([1, 2, 3], 0, fn (x, acc) -> x + acc end)
      IO.puts("sum by enum #{sum}")
    end

    def double_by_sum()do
      double = Enum.map([1, 2, 3], &(&1 * 2))
      IO.puts("#{hd(double)}")
    end
  end




  def run() do
    IO.puts("=============Chapter 9 test case========================")
    Recursion.print_multiple_times("hello world", 3)

    IO.puts "do sum #{Math.accumulate([1, 2, 3], 0)}"
    IO.puts "call Math module in other files #{ElixirTutorialChapterEight.Math.aPublicFunction()}"
    Math.sum_by_enum()
    Math.double_by_sum()
  end
end
