import Config

config :nostrum, :consumer, Nostrum.ConsumerMock

import Config

config :werewolf_core, WerewolfCore.Repo,
  username: "postgres",
  password: "postgres",
  database: "werewolf_test#{System.get_env("MIX_TEST_PARTITION")}",
  hostname: "localhost",
  pool: Ecto.Adapters.SQL.Sandbox,
  pool_size: System.schedulers_online() * 2
