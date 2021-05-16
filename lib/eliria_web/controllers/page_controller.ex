defmodule EliriaWeb.PageController do
  use EliriaWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
