# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :doggie_tag_list_backend,
  namespace: DoggieTagCx,
  ecto_repos: [DoggieTagCx.Repo]

# Configures the endpoint
config :doggie_tag_list_backend, DoggieTagCxWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "SsGyqyFmBgZGg3arecQVuLe+i5yH4+KdbjolDija8K6FdkAxI0udiuHEc//yN93s",
  render_errors: [view: DoggieTagCxWeb.ErrorView, accepts: ~w(json)],
  pubsub: [name: DoggieTagCx.PubSub, adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:user_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"

config :doggie_tag_list_backend, DoggieTagCx.UserManager.Guardian,
  issuer: "doggie_tag_list_backend",
  secret_key: "b++QhTYXuwmVE/xyMjVr5c13Tj0QEvFjOztkAICpldrgyd0KZQ3CssxBGsIyS6l3",
  serializer: DoggieTagCx.GuardianSerializer
