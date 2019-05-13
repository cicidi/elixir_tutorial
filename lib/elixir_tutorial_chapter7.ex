defmodule ElixirTutorialChapterSeven do
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

  def creatMapping do
    list = [{:a, 1}, {:b, 2}]
    IO.puts("create list-> #{list[:a]}")
    list
  end

  def readList(list) do
    #    list = creatMapping()
    IO.puts("use list in another method :a -> #{list[:a]}")
  end

  def appendToList(list) do
    list = list ++ [{:c, 3}]
    IO.puts("append :c to list, new list size -> #{length(list)}")
  end

  def run() do
    IO.puts("=============Chapter 7 test case========================")
    list = creatMapping()
    readList(list)
    appendToList(list)
  end

end
