defmodule WerewolfCore.Repo do
  use Ecto.Repo,
    otp_app: :werewolf_core,
    adapter: Ecto.Adapters.Postgres
end
