defmodule ElixirTutorialChapterSeventeen do
  @moduledoc """
  Documentation for ElixirTutorial.
  """

  @doc """
  Structs
  https://elixir-lang.org/getting-started/structs.html
  """

  defmodule ComprehensionTest do
    def iterator do
      result = for n <- [1, 2, 3, 4], do: n * n
      IO.inspect(result)
      values = [good: 1, good: 2, bad: 3, good: 4]
      IO.inspect for{:good, n} <- values, do: n * n
    end

    def filter do
      multiple_of_3? = fn (n) -> rem(n, 3) == 0 end
      result = for n <- 0..5, multiple_of_3?.(n), do: n * n
      IO.inspect(result)
    end

    ## scan file system
    def scanDir do
      dirs = ['/Users/walter/Downloads']
      for dir <- dirs,
          file <- File.ls!(dir),
          path = Path.join(dir, file),
          File.regular?(path) do
        File.stat!(path).size
      end
    end

    # double generator
    def cartesian_product do
      IO.inspect for i <- [:a, :b, :c], j <- [1, 2], do: {i, j}
    end

    # tripe generator and 2 filter
    defmodule Triple do
      def pythagorean(n) when n > 0 do
        for a <- 1..n - 2,
            b <- a + 1..n - 1,
            c <- b + 1..n,
            a + b + c <= n,
            a * a + b * b == c * c,
            do: {a, b, c}
      end
    end

    # pixel filter

    def pixFilter do
      pixels = <<213, 45, 132, 64, 76, 32, 76, 0, 0, 234, 32, 15>>
      for <<r :: 8, g :: 8, b :: 8 <- pixels>>, do: {r, g, b}
    end

    def intoFunc do
      for <<c <- " hello world ">>, c != ?\s, into: "", do: <<c>>
    end
  end
  def run() do
    IO.puts("=============Chapter 17 test case========================")
    ComprehensionTest.iterator()
    ComprehensionTest.filter()
    IO.inspect ComprehensionTest.scanDir()
    ComprehensionTest.cartesian_product()
    IO.inspect ElixirTutorialChapterSeventeen.ComprehensionTest.Triple.pythagorean(12)
    IO.inspect ComprehensionTest.pixFilter()
    IO.inspect ComprehensionTest.pixFilter()
  end
end
