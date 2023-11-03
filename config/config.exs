# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :elixir_blog_api,
  ecto_repos: [ElixirBlogApi.Repo]

# Configures the endpoint
config :elixir_blog_api, ElixirBlogApiWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "BVJt7MDZS7o9RLqhBYUmWSdMgBuSdLsUNKQ2Rks5V5Ep+wCV1N71+HFISikwFTXu",
  render_errors: [view: ElixirBlogApiWeb.ErrorView, accepts: ~w(json), layout: false],
  pubsub_server: ElixirBlogApi.PubSub,
  live_view: [signing_salt: "8og72qCi"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
