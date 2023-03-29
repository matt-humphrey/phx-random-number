import Config

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :random_number, RandomNumberWeb.Endpoint,
  http: [ip: {127, 0, 0, 1}, port: 4002],
  secret_key_base: "HBSOCnjdDpanW4oQSw8Z3B5uQey0U38Jxo09R7+DeC5ksauBpab98gwgNQTE03N4",
  server: false

# In test we don't send emails.
config :random_number, RandomNumber.Mailer,
  adapter: Swoosh.Adapters.Test

# Print only warnings and errors during test
config :logger, level: :warn

# Initialize plugs at runtime for faster test compilation
config :phoenix, :plug_init_mode, :runtime
