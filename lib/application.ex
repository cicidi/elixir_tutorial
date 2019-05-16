defmodule ApplicationTest do
  import ElixirTutorialChapterTwo, only: :functions
  import ElixirTutorialChapterThree, only: :functions
  import ElixirTutorialChapterFour, only: :functions
  import ElixirTutorialChapterFive, only: :functions
  import ElixirTutorialChapterSeven, only: :functions
  use Application
  @moduledoc false

  def start(_type, _args) do
    IO.puts("start test")
    children = [
      # Starts a worker by calling: A.Worker.start_link(arg)
      # {A.Worker, arg},
    ]

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    ElixirTutorialChapterTwo.run()
    ElixirTutorialChapterThree.run()
    ElixirTutorialChapterFour.run()
    ElixirTutorialChapterFive.run()
    ElixirTutorialChapterSeven.run()
    ElixirTutorialChapterEight.run()
    ElixirTutorialChapterNine.run()
    ElixirTutorialChapterTen.run()
    ElixirTutorialChapterEleven.run()

    opts = [strategy: :one_for_one, name: A.Supervisor]
    Supervisor.start_link(children, opts)
  end
end
