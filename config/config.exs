# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :bootstrap_form_demo, ecto_repos: [BootstrapFormDemo.Repo]

config :bootstrap_form_demo, BootstrapFormDemo.Repo,
  database: "bootstrap_form_demo_repo",
  hostname: "localhost"

# Configures the endpoint
config :bootstrap_form_demo, BootstrapFormDemoWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "ccGDoBOSwV+KMIDeHvPYwaPZaDuYkZBlgO06oCG3QSTvOMPAcqGy/l2ujUb1gDZj",
  render_errors: [view: BootstrapFormDemoWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: BootstrapFormDemo.PubSub, adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
