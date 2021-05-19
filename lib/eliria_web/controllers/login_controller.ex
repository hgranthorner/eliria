defmodule EliriaWeb.LoginController do
  use EliriaWeb, :controller

  def redirect_to(conn, _), do: redirect(conn, to: "/")

  def login(conn, %{"username" => username}) do
    conn
    |> put_resp_cookie("username", username)
    |> redirect(to: "/")
  end

  def logout(conn, _params) do
    conn
    |> delete_resp_cookie("username")
    |> redirect(to: "/")
  end
end