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
    response = greet_response(interaction.data.options)
    Api.create_interaction_response(interaction, response)
  end

  def handle_event({:READY, _data, _ws_state}) do
    WerewolfBot.Commands.register_commands()
    IO.puts("Bot is ready")
  end

  defp greet_response([%{name: "greeting", value: greeting}]) do
    %{
      # ChannelMessageWithSource
      type: 4,
      data: %{
        content: WerewolfCore.greet(greeting),
        flags: 64
      }
    }
  end
end
