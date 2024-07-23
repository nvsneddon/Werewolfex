import Config

case config_env() do
  :dev -> env_data = Dotenv.load(".dev.env")
    token = env_data.values["DISCORD_BOT_TOKEN"]

    config :nostrum, token: token, ffmpeg: false
  _ -> :nothing
end
