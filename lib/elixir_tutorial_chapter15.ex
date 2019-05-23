defmodule ElixirTutorialChapterFifteen do
  @moduledoc """
  Documentation for ElixirTutorial.
  """

  @doc """
  Structs
  https://elixir-lang.org/getting-started/structs.html
  """

  defmodule User do
    defstruct name: "Walter", age: 18
  end

  defmodule Product do
    defstruct [:name]
  end

  defmodule Car do
    # force struct to assign the value
    @enforce_keys [:make]
    defstruct [:name, :make]
  end
  # read file
  def run() do
    IO.puts("=============Chapter 15 test case========================")
    walter = %User{}
    IO.inspect(walter)
    walter = %User{age: 30}
    IO.inspect(walter)
    IO.inspect(walter.name)
    walter = %{walter | name: "Walter Chen"}
    IO.puts("update name to -> #{walter.name}")
    IO.puts("struct name of wlater -> #{walter.__struct__}")

    walter = Map.put(%User{}, :name, "Kurt")
    IO.puts(walter.name)
    IO.inspect(%Product{})
    IO.inspect(%Car{make: "K-BYTE"})

  end
end
