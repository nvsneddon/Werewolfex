import Config

config :werewolf_core,
  ecto_repos: [WerewolfCore.Repo],
  generators: [timestamp_type: :utc_datetime]

config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  level: :info

import_config "#{config_env()}.exs"
