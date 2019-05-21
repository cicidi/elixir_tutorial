defmodule Example.Router do
  @moduledoc false

  use Plug.Router

  plug :match
  plug :dispatch

  get "/" do
    send_resp(conn, 200, "Welcome")
  end
  get "/hello" do
    send_resp(conn, 200, "hello")
  end

  match _ do
    send_resp(conn, 404, "Oops!")
  end

end