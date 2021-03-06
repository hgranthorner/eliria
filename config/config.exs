# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :eliria,
  ecto_repos: [Eliria.Repo]

# Configures the endpoint
config :eliria, EliriaWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "kGkEYqHy7qfJT+Od84HrRquyXABWBaYZf4ZjQb9Cl0gQdp75IspZmUcNP2Ypp8mm",
  render_errors: [view: EliriaWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: Eliria.PubSub,
  live_view: [signing_salt: "jSaiP66E"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

config :eliria, AuthMe.UserManager.Guardian,
  issuer: "eliria",
  secret_key: "Cl3j/ffDYFPNvtwbT5smYcoQWOBfEwPP6kG6ygGuWh2rIzfDMaDl7pIUoH/viknI"

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
