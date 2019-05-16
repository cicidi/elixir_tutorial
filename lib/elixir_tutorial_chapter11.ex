defmodule ElixirTutorialChapterEleven do
  @moduledoc """
  Documentation for ElixirTutorial.
  """

  @doc """
  Hello world.

  ## Examples

      iex> ElixirTutorial.hello()
      :world

  """

  defmodule ProcessTest do
    def createProcess()do
      pid = spawn fn -> 1 + 2 end
      IO.puts Process.alive?(pid)
    end

    def send_msg(receiver, message) do
      send receiver, message
    end

    def receive do
      receive do
        {:hello, msg} -> IO.puts "receive message #{inspect msg}"
        {:world, msg} -> IO.puts  "won't match"
      after
        1_000 -> IO.puts "nothing receive after 1s"
      end
    end

    def spank_link_test do
      result = spawn fn -> raise "oops" end
      IO.puts "oops #{inspect result}"
    end
  end

  defmodule KV do
    def start_link do
      Task.start_link(fn -> loop(%{}) end)
    end

    defp loop(map) do
      receive do
        {:get, key, caller} ->
          send caller, Map.get(map, key)
          loop(map)
        {:put, key, value} ->
          loop(Map.put(map, key, value))
      end
    end
  end

  def run() do
    IO.puts("=============Chapter 11 test case========================")
    ProcessTest.createProcess()
    ProcessTest.send_msg(self(), {:hello, "world"})
    ProcessTest.receive()
    IO.puts "receive message for 2nd time"
    ProcessTest.receive()
    parent = self()
    spawn fn -> ProcessTest.send_msg(parent, {:hello, self()})
    end
    IO.puts "receive message for 3nd time after send message to pid : #{inspect parent}"
    ProcessTest.receive()
#    ProcessTest.spank_link_test()
  end
end
