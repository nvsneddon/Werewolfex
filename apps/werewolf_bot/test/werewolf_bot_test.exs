defmodule WerewolfBotTest do
  use ExUnit.Case
  doctest WerewolfBot

  test "greets the world" do
    assert WerewolfBot.hello() == :world
  end
end
