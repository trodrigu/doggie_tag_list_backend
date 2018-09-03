use Mix.Config

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :doggie_tag_list_backend, DoggieTagCxWeb.Endpoint,
  http: [port: 4001],
  server: false

# Print only warnings and errors during test
config :logger, level: :warn

# Configure your database
config :doggie_tag_list_backend, DoggieTagCx.Repo,
  adapter: Ecto.Adapters.Postgres,
  username: "postgres",
  password: "postgres",
  database: "doggie_tag_list_backend_test",
  hostname: "localhost",
  pool: Ecto.Adapters.SQL.Sandbox
