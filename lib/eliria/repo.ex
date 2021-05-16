defmodule Eliria.Repo do
  use Ecto.Repo,
    otp_app: :eliria,
    adapter: Ecto.Adapters.SQLite3
end
