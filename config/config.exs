# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

# Configures the endpoint
config :plug_hmac_auth_example, PlugHmacAuthExampleWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "1BlDwpmef+bgtf46wDMCiaKTnlsfXd/qp8fJh2+Kw0vygSz09YKZ+OSRpTenPCl+",
  render_errors: [view: PlugHmacAuthExampleWeb.ErrorView, accepts: ~w(json)],
  pubsub: [name: PlugHmacAuthExample.PubSub, adapter: Phoenix.PubSub.PG2],
  live_view: [signing_salt: "t+FStNDl"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
