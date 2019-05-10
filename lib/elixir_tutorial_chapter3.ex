defmodule ElixirTutorialChapterThree do
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


  def connectOperator do
    IO.puts("test connector : hello " <> "world")
  end

  def run() do

    IO.puts("=============Charpter 3 test case========================")
    connectOperator()
  end

end
