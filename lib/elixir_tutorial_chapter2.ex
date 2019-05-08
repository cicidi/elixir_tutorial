defmodule ElixirTutorialChapterTwo do
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

  # chapter 2
  def numberOperate do
    IO.puts(div(10, 2))
  end

  def binary do
    IO.puts(0b1010)
  end
end
