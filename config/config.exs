# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :test,
  ecto_repos: [Test.Repo]

# Configures the endpoint
config :test, TestWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "+RMzxvipn264V38S2jYl91QS13McFLc9VTQjI9DUj6pwDMF1SpncBq42/5MgKQOX",
  render_errors: [view: TestWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: Test.PubSub,
  live_view: [signing_salt: "p72o1H/t"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
