defmodule WerewolfBot.Commands do
  alias Nostrum.Api
  alias WerewolfBot.Commands.OptionTypes

  @guild_id 681_696_629_224_505_376

  def register_commands do
    command =
      %{
        name: "greet",
        description: "Greet the bot",
        options: [
          %{
            type: OptionTypes.string(),
            name: "greeting",
            description: "The greeting you want to give",
            required: true
          }
        ]
      }

    {:ok, old_commands} = Api.get_guild_application_commands(@guild_id)

    Enum.each(old_commands, &Api.delete_guild_application_command(@guild_id, &1.id))

    case Api.create_guild_application_command(@guild_id, command) do
      {:ok, response} -> IO.inspect(response.name, label: "Command Registered Successfully")
      {:error, thing} -> IO.inspect(thing, label: "Error registering command")
    end

    # Use Api.create_global_application_command(command) if you want to register the command globally.

    :ok
  end
end
