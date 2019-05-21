defmodule Example.HelloWorldPlug do
  @moduledoc false

  # this tutorial is follow this page to build an web application
  # https://elixirschool.com/en/lessons/specifics/plug/
  import Plug.Conn


  # The init/1 function is used to initialize our Plug’s options.
  # The value returned from init/1 will eventually be passed to call/2 as its second argument.
  def init(options), do: options


  # The call/2 function is called for every new request that comes in from the web server, Cowboy.
  # It receives a %Plug.Conn{} connection struct as its first argument and is expected to return a %Plug.Conn{} connection struct.
  def call(conn, _opts) do
    conn
    |> put_resp_content_type("text/plain")
    |> send_resp(200, "Hello World!\n")
  end
end
