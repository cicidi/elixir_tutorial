defmodule ElixirTutorialChapterFour do
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


  def modeMatch do
    {a, b, c} = {:hello, "world", 42}
    IO.puts("a -> #{a}")

    ok = "OK_VALUE"
    {:ok, result} = {:ok, "hello"}
    IO.puts("result on #{:ok}-> #{result}")

    list = [104, 101, 108, 108, 111]
    newList = [0 | list]

    IO.puts("old list #{list}")
    IO.puts("new list is a array #{newList}")
    IO.puts("new list is a array ,head is #{hd(newList)}")
    IO.puts("new list is a array ,tail is #{tl(newList)}")


    ## no match error
    IO.puts("========expecting error here===========")
    {x, x} = {1, 1}
    #    {x, x} = {1, 2}
    IO.puts("========expecting error here===========")

    x = 1
    # ^x = 2 #IO.puts("========expecting error here===========")


  end

  def run() do
    IO.puts("=============Charpter 4 test case========================")
    modeMatch()
  end

end
