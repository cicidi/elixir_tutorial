defmodule ElixirTutorial do
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

  def numberOperate do
    IO.puts(div(10, 2))
  end
end
