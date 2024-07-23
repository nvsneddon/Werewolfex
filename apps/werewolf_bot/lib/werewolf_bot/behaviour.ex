defmodule WerewolfBot.Behaviour do
  @callback handle_event(event :: any()) :: any()
end
