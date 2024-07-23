import Config

config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  level: :info

import_config "#{config_env()}.exs"
