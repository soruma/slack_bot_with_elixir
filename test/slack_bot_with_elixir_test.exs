defmodule SlackBotWithElixirTest do
  use ExUnit.Case
  doctest SlackBotWithElixir

  test "greets the world" do
    assert SlackBotWithElixir.hello() == :world
  end
end
