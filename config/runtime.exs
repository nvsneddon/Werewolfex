import Config

env_data = Dotenv.load()
token = env_data.values["DISCORD_BOT_TOKEN"]

# config :nostrum, token: System.get_env("DISCORD_BOT_TOKEN"), ffmpeg: false
config :nostrum, token: token, ffmpeg: false

config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  level: :info
