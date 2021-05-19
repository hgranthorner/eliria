defmodule EliriaWeb.PageController do
  use EliriaWeb, :controller

  def index(conn, _params) do
    conn
    |> render("index.html", username: EliriaWeb.Helpers.get_username(conn))
  end
end
