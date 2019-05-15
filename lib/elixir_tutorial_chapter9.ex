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

    def double([head | tail])do

    end

    def double([])do
      []
    end
  end




  def run() do
    IO.puts("=============Chapter 9 test case========================")
    Recursion.print_multiple_times("hello world", 3)

    IO.puts "do sum #{Math.accumulate([1, 2, 3], 0)}"
    IO.puts "call Math module in other files #{ElixirTutorialChapterEight.Math.aPublicFunction()}"

  end
end
