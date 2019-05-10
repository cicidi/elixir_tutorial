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

  def linkedList do
    list = [1, 2, 3]
    IO.puts(tl(list))
    IO.puts(hd(list))
    list2 = [104, 101, 108, 108, 111]
    IO.puts("not able to print anything here -> #{list}")  ## list cannot be printed as a string
    IO.puts("print hello here -> #{list2}")  ## list2 print as  string
    list1 = list2
    IO.puts("assign list 1 value to -> #{list1}")  ## assign list value to list2 print "hello "
  end


  def tuples do
    tuple = {:ok, "hello"}
    tuple = {:ok, "hello"}
    IO.puts("print first value of tuple #{elem(tuple, 0)}")
    IO.puts("print second value of tuple #{elem(tuple, 1)}")
    tuple2 = put_elem(tuple, 1, "world")  #this line can only replace string it can't add element
    IO.puts("print original tuple value of tuple #{tuple_size(tuple)}")
    IO.puts("print inserted tuple value #{elem(tuple2, 1)}")
  end

  def readFile() do
    IO.puts("read valid file")
    tuple = File.read("/Users/walter/project/elixir_tutorial/README.md")
    IO.puts("#{elem(tuple, 0)}")
    IO.puts("#{elem(tuple, 1)}")

    IO.puts("read invalid file")
    tuple = File.read("/Users/walter/project/elixir_tutorial/NOFILE")
    IO.puts("#{elem(tuple, 0)}")
    IO.puts("#{elem(tuple, 1)}")
  end


  def run do
    IO.puts("=============Charpter 2 test case========================")
    numberOperate()
    binary()
    isBinary()
    atom()
    anonymousFunction()
    anonymousNestedFunction()
    linkedList()
    tuples()
    readFile()
  end


end
