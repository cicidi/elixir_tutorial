defmodule ElixirTutorialChapterSixteen do
  @moduledoc """
  Documentation for ElixirTutorial.
  """

  @doc """
  Structs
  https://elixir-lang.org/getting-started/structs.html
  """
  defmodule ProtocolTest do
    defprotocol Size do
      def size(data)
    end

    defimpl Size, for: BitString do
      def size(string), do: byte_size(string)
    end
    defimpl Size, for: Map do
      def size(map), do: map_size(map)
    end
    defimpl Size, for: Tuple do
      def size(tuple), do: tuple_size(tuple)
    end

    defimpl Size, for: ElixirTutorialChapterFifteen.User do
      def size(_user), do: 2
    end
  end

  def run() do
    IO.puts("=============Chapter 16 test case========================")
    IO.puts(ProtocolTest.Size.size("hello word"))
    IO.puts(ProtocolTest.Size.size({:ok, "hello word"}))
    IO.puts(ProtocolTest.Size.size(%{label: "hello word"}))
    IO.puts("protocol used on structs -> #{ProtocolTest.Size.size(%ElixirTutorialChapterFifteen.User{})}")
  end
end
