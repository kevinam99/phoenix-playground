# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :click_counter,
  ecto_repos: [ClickCounter.Repo]

# Configures the endpoint
config :click_counter, ClickCounterWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "7J+t5wNHLcnoc09BpsYgr5hNdLNSy/h7tvqSc8nALVNWDIlYZrWnZ86FsrqgZqFp",
  render_errors: [view: ClickCounterWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: ClickCounter.PubSub,
  live_view: [signing_salt: "HBPqh4KY"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
