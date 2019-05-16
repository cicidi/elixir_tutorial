defmodule ElixirTutorialChapterTen do
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
    def test_odd() do
      odd? = &(rem(&1, 2) != 0)
      result = Enum.filter(1..5, odd?)
      IO.puts(Enum.join(result, " "));
    end

    def pipe() do
      odd? = &(rem(&1, 2) != 0)
      result = 1..100_000
               |> Enum.map(&(&1 * 3))
               |> Enum.filter(odd?)
               |> Enum.sum()
      IO.puts result
    end
  end

  defmodule StreamTest do
    def stream_text do
      stream = Stream.unfold("hełło", &String.next_codepoint/1)
      result = Enum.take(stream, 4)
      IO.puts(result)
    end

    def stream_file do
      stream = File.stream!("/Users/walter/project/elixir_tutorial/lib/elixir_tutorial_chapter10.ex")
      text = Enum.take(stream, 3)
      IO.puts("take 3 lines of file \n #{text}")
    end
  end

  def run() do
    IO.puts("=============Chapter 10 test case========================")
    Math.test_odd();
    Math.pipe();
    StreamTest.stream_text()
    StreamTest.stream_file()
  end
end
