defmodule WerewolfCoreTest do
  use ExUnit.Case
  doctest WerewolfCore

  test "greets the world" do
    assert WerewolfCore.hello() == :world
  end
end
