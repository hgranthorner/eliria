defmodule EliriaWeb.Helpers do
    def get_username(conn) do
        conn.cookies["username"]
    end
end