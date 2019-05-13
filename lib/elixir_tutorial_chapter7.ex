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
    IO.puts("list equal to original -> #{list == [a: 1, b: 2]}")
    IO.puts("append :c to list, new list size -> #{length(list)}")
    list = list ++ [{:d, 4}]
    IO.puts("append :d to list, new list size -> #{length(list)}")
    IO.puts("value d is -> #{list[:c]}")
  end

  def replaceValue(list) do
    list = list ++ [{:d, 5}]
    IO.puts("replace value of d from 4 to -> #{list[:d]}")

  end
  def run() do
    IO.puts("=============Chapter 7 test case========================")
    list = creatMapping()
    readList(list)
    appendToList(list)
    replaceValue(list)
  end

end
