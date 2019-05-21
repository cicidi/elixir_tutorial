defmodule Example.Application do
  @moduledoc false



  use Application
  require Logger

  def start(_type, _args) do
    children = [
      {
        Plug.Cowboy,
        scheme: :http, #:scheme - HTTP or HTTPS as an atom (:http, :https)
#        plug: Example.HelloWorldPlug, # The plug module to be used as the interface for the web server.
        plug: Example.Router, # The plug module to be used as the interface for the web server.
        # You can specify a module name, like MyPlug, or a tuple of the module name and options {MyPlug, plug_opts},
        # where plug_opts gets passed to your plug modules init/1 function.
        options: [
          port: 8080
        ]
        # The server options. Should include the port number on which you want your server listening for requests.
      }
    ]

    ElixirTutorialChapterTwo.run()
    ElixirTutorialChapterThree.run()
    ElixirTutorialChapterFour.run()
    ElixirTutorialChapterFive.run()
    ElixirTutorialChapterSeven.run()
    ElixirTutorialChapterEight.run()
    ElixirTutorialChapterNine.run()
    ElixirTutorialChapterTen.run()
    ElixirTutorialChapterEleven.run()
    ElixirTutorialChapterTwelve.run()
    ElixirTutorialChapterThirteen.run()
    ElixirTutorialChapterFourteen.run()

    opts = [strategy: :one_for_one, name: Example.Supervisor]

    Logger.info("Starting application...")

    Supervisor.start_link(children, opts)
  end
end