defmodule WerewolfBot.Application do
  use Application

  def start(_type, _args) do
    children = [
      WerewolfBot
    ]

    opts = [strategy: :one_for_one, name: WerewolfBot.Supervisor]
    Supervisor.start_link(children, opts)
  end
end
