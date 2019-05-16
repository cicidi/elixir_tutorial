defmodule ElixirTutorialChapterTwelve do
  @moduledoc """
  Documentation for ElixirTutorial.
  """

  @doc """
  Hello world.

  ## Examples

      iex> ElixirTutorial.hello()
      :world

  """

  defmodule FileIO do
    def get_test do
      response = IO.gets "yes or no?"
      IO.puts response
      IO.puts :stderr, "hello world"
    end

    def read_write do
      {:ok, file} = File.open "hello", [:write]
      IO.puts "#{inspect file}"
      IO.puts IO.binwrite file, "world"
      IO.puts File.close file
      IO.puts "#{inspect File.read "hello"}"
      IO.puts "#{inspect File.read! "hello"}"
      try do
        IO.puts "#{inspect File.read! "unknown"}"
      rescue
        File.Error -> IO.puts "unknown file"
      end

      case File.read("unknow") do
        {:ok, body} -> IO.puts "print #{inspect body}"
        {:error, reason} -> IO.puts "print #{inspect reason}"
      end

      IO.puts Path.join("foo", "bar")
      IO.puts Path.expand("~/hello")

      {:ok, pid} = StringIO.open("hello")
      IO.puts "#{inspect pid}"
      IO.puts("test StringIO: #{IO.read(pid, 2)}")
    end
  end

  # read file
  def run() do
    IO.puts("=============Chapter 12 test case========================")
    #    FileIO.get_test()
    FileIO.read_write()
  end
end
