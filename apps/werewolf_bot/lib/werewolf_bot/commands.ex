defmodule WerewolfBot.Commands do
  alias Nostrum.Api

  def register_commands do
    command =
      %{
        name: "greet",
        description: "Greet the bot",
        options: []
      }

    case Api.create_guild_application_command(681_696_629_224_505_376, command) do
      {:ok, response} -> IO.inspect(response.name, label: "Command Registered Successfully")
      {:error, _} -> IO.puts("Error Registering Command")
    end

    # Use Api.create_global_application_command(command) if you want to register the command globally.

    :ok
  end
end
