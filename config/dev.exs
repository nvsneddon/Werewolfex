import Config

config :werewolf_core, WerewolfCore.Repo,
  username: "postgres",
  password: "postgres",
  hostname: "localhost",
  database: "werewolf_dev",
  stacktrace: true,
  show_sensitive_data_on_connection_error: true,
  pool_size: 10
