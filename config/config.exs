# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :elixirdev,
  ecto_repos: [Elixirdev.Repo]

# Configures the endpoint
config :elixirdev, Elixirdev.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "TD2m05BRwuNQbHXJ7XWO3HMZJCFKEtTz11ZoF+0Cm6+fFJh7FYUYgySLMmLU8q+u",
  render_errors: [view: Elixirdev.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Elixirdev.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
