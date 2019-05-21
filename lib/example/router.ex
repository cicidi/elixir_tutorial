defmodule Example.Router do
  @moduledoc false

  use Plug.Router
  use Plug.ErrorHandler

  alias Example.Plug.VerifyRequest

  # Verify Request should plug before :match and dispatch
  plug Plug.Parsers, parsers: [:urlencoded, :multipart]
  plug VerifyRequest, fields: ["content", "mimetype"], paths: ["/upload"]

  plug :match
  plug :dispatch

  get "/" do
    send_resp(conn, 200, "Welcome")
  end
  get "/hello" do
    send_resp(conn, 200, "hello")
  end

  get "/upload" do
    send_resp(conn, 201, "Uploaded")
  end
  match _ do
    send_resp(conn, 404, "Oops!")
  end

  defp handle_errors(conn, %{kind: kind, reason: reason, stack: stack}) do
    IO.inspect(kind, label: :kind)
    IO.inspect(reason, label: :reason)
    IO.inspect(stack, label: :stack)
    send_resp(conn, conn.status, "Something went wrong")
  end
end
