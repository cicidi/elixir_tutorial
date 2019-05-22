defmodule ElixirTutorialChapterFourteen do
  @moduledoc """
  Documentation for ElixirTutorial.
  """

  @doc """
  Hello world.

  ## Examples

      iex> ElixirTutorial.hello()
      :world

  """

  defmodule MyServer do


    @initial_state %{host: "127.0.0.1", port: 3456}

    def get_initial_state do
      IO.puts(inspect @initial_state)
      ip = Map.get(@initial_state, :host)
    end
  end


  # read file
  def run() do

    IO.puts("=============Chapter 14 test case========================")
    IO.inspect("get ip address from initial object -> #{MyServer.get_initial_state()}")

  end
end
