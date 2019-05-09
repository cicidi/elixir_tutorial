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

  def isBinary do
    IO.puts(is_boolean(true))
    IO.puts(is_boolean(1))
    IO.puts(is_boolean("true"))
  end

  def atom do
    IO.puts(:world)
    IO.puts("hello #{:world}")
    #    :world = "change"  # atom value can not be changed
    worldValue = "new world"
    IO.puts("hello #{worldValue}")
  end

  def run do
    numberOperate()
    binary()
    isBinary()
    atom()
  end
end
