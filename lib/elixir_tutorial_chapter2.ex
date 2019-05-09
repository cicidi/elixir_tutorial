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

  def anonymousFunction do
    add = fn a, b -> a + b end
    IO.puts("run add func 1+2 = #{add.(1, 2)}")
    IO.puts("if add is a function =  #{is_function(add)}")
    IO.puts("if add is a function with 2 arguments =  #{is_function(add, 2)}")
    IO.puts("if add is a function with 1 arguments = #{is_function(add, 1)}")
  end

  def anonymousNestedFunction do
    add = fn a, b -> a + b end
    double = fn a -> add.(a, a) end
    IO.puts(" double func = #{double.(2)}")
  end

  def run do
    numberOperate()
    binary()
    isBinary()
    atom()
    anonymousFunction()
    anonymousNestedFunction()
  end
end
