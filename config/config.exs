# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :phx_aws_cognito,
  ecto_repos: [PhxAwsCognito.Repo]

# Configures the endpoint
config :phx_aws_cognito, PhxAwsCognitoWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "LPl/YytIeGOAVSRRcYO7i30uoD+j+UX644aRUu9KlGBBBHEqMruxw6Jg6yoHSLKG",
  render_errors: [view: PhxAwsCognitoWeb.ErrorView, accepts: ~w(json)],
  pubsub: [name: PhxAwsCognito.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:user_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
