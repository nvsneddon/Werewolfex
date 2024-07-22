defmodule WerewolfBot do
  @moduledoc """
  Documentation for `WerewolfBot`.
  """
  use Nostrum.Consumer

  alias Nostrum.Api
  alias Nostrum.Struct.Interaction

  def handle_event(
        {:INTERACTION_CREATE, %Interaction{data: %{name: "greet"}} = interaction, _ws_state}
      ) do
    response = %{
      # ChannelMessageWithSource
      type: 4,
      data: %{
        content: WerewolfCore.greet(),
        flags: 64
      }
    }

    Api.create_interaction_response(interaction, response)
  end

  def handle_event({:READY, _data, _ws_state}) do
    WerewolfBot.Commands.register_commands()
    IO.puts("Bot is ready")
  end
end
