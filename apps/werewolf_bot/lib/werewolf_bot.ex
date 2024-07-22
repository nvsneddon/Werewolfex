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
  end

  # def handle_event({:MESSAGE_CREATE, msg, _ws_state}) do
  #   IO.puts("Here's the beginning")
  #   IO.inspect(msg)

  #   case msg.content do
  #     "!sleep" ->
  #       Api.create_message(msg.channel_id, "Going to sleep...")
  #       # This won't stop other events from being handled.
  #       Process.sleep(3000)

  #     "!ping" ->
  #       IO.puts("Here we are")
  #       Api.create_message(msg.channel_id, "pyongyang!")

  #     "!raise" ->
  #       # This won't crash the entire Consumer.
  #       raise "No problems here!"

  #     _ ->
  #       IO.puts("Went here")
  #       :ignore
  #   end
  # end
end
