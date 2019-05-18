defmodule ElixirTutorialChapterThirteen do
  @moduledoc """
  Documentation for ElixirTutorial.
  """

  @doc """
  Hello world.

  ## Examples

      iex> ElixirTutorial.hello()
      :world

  """

  defmodule Alias do
    def test_alias do
      alias Math.List, as: List

    end
  end

  def test_require do
    require Integer
    IO.puts("#{Integer.is_odd(3)}")
  end

  def test_import do
    import List, only: [duplicate: 2]
    IO.puts("#{inspect  duplicate(:ok, 3)}")
  end

  def test_flatten do
    result = :lists.flatten([1, [2], 3])
    IO.puts "#{inspect result}"
  end

  #  defmodule AssertionTest do
  #    use ExUnit.Case, async: true
  #    ExUnit.start()
  #    test "always pass" do
  #      assert true
  #    end
  #  end

  # read file
  def run() do
    IO.puts("=============Chapter 13 test case========================")
    #    FileIO.get_test()
    test_require()
    test_import()
    test_flatten()
  end
end
