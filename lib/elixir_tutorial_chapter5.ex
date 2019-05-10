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


  def run() do
    IO.puts("=============Charpter 5 test case========================")
    caseFunc()
  end

end
