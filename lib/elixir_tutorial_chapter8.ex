defmodule ElixirTutorialChapterEight do
  @moduledoc """
  Documentation for ElixirTutorial.
  """

  @doc """
  Hello world.

  ## Examples

      iex> ElixirTutorial.hello()
      :world

  """



  defmodule Math do
    def aPublicFunction do
      IO.puts("this is a public function")
    end

    defp aPrivateFunction do
      IO.puts("this is a private function")
    end

    def zero?(0) do
      true
    end
    def zero?(x) when is_integer(x) do
      false
    end

    def functionCapturing do
      fun = &Math.zero?/1
      IO.puts("use name/arity to refer to functions")
      IO.puts("Math.zero is a function -> #{is_function(fun)}")
      IO.puts("call function by function reference fun.(0) => return true.   -> #{fun.(0)}")
    end
  end

  def defaultFunction(x, y, split \\ " ") do
    x <> split <> y
  end

  defmodule MultipleClauses do

    def defaultFunction(x, y \\ nil, split \\ " ")
    def defaultFunction(x, y, split) when is_nil(y) do
      x
    end
    def defaultFunction(x, y, split) do
      x <> split <> y
    end
  end

  def run() do
    IO.puts("=============Chapter 8 test case========================")
    Math.aPublicFunction
    try do
      Math.aPrivateFunction
    rescue
      UndefinedFunctionError -> IO.puts("call private method, expect UndefinedFunctionError")
    end
    IO.puts("nested function with condition is parameter is integer true false -> #{Math.zero?(1)}")

    Math.functionCapturing

    IO.puts "give x=hello y=world use default splitter \"spacce\" #{defaultFunction("hello", "world")}}"
    IO.puts "give x=hello y=world use given splitter \"_\" #{defaultFunction("hello", "world", "_")}}"

    IO.puts "overload feature in elixir"
    IO.puts "give x=hello y use default nil and use default splitter \"spacce\" #{
      MultipleClauses.defaultFunction("hello")
    }}"
    IO.puts "give x=hello y=world use given splitter \"_\" #{MultipleClauses.defaultFunction("hello", "world", "_")}}"


  end
end
