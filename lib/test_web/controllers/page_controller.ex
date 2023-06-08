defmodule TestWeb.PageController do
  use TestWeb, :controller

  def index(conn, _params) do
    conn
    |> IO.inspect(label: "conn")
    |> render("index.html")
  end
end
