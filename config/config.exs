# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :teenywords,
  ecto_repos: [Teenywords.Repo]

# Configures the endpoint
config :teenywords, TeenywordsWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "OywJL0nj9uj6WxWpl+/SH1dnsMPTzZNZbq2ttKSPvRvqn7Ye065EKOkdxp3KAI7K",
  render_errors: [view: TeenywordsWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: Teenywords.PubSub,
  live_view: [signing_salt: "VIgn53wQ"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
