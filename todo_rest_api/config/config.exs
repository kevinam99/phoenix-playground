# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :todo_rest_api,
  ecto_repos: [TodoRestApi.Repo]

# Configures the endpoint
config :todo_rest_api, TodoRestApiWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "utthGYQmLSkQX2ewPb0CjRnk0cJE5KA9Vdyh9sUH9tCGFLEOVgXSJZzEXrRaYawE",
  render_errors: [view: TodoRestApiWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: TodoRestApi.PubSub,
  live_view: [signing_salt: "g5VU/MEr"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
